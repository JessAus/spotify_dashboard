#####################################################################################
# Date: 01/08/2024                                                                  #
# Author: Jessie Ausman                                                             #
# Purpose: Load and Clean Spotify data                                              #
#####################################################################################

# Load req. packages ----------------------------------------------------------------
pacman::p_load(tidyverse, jsonlite, janitor, lubridate, echarts4r, fontawesome)
#-----------------------------------------------------------------------------------#


# Read in data & clean column names -------------------------------------------------
raw_stream1 <- fromJSON("data/Streaming_History_Audio_2021-2023_2.json", flatten=TRUE) %>%
  clean_names()

raw_stream2 <- fromJSON("data/Streaming_History_Audio_2019-2021_1.json", flatten=TRUE) %>%
  clean_names()

raw_stream_full <- rbind(raw_stream2, raw_stream1) %>%
  distinct(.keep_all = TRUE)
#-----------------------------------------------------------------------------------#

# Add columns for number of plays/time listened by artist/track and day/month (6 cols)
clean_stream <- raw_stream_full %>%
  group_by(master_metadata_album_artist_name) %>%
  mutate(plays_by_artist = n(),
         time_listen_by_artist = sum(ms_played)) %>%
  ungroup() %>%
  group_by(master_metadata_track_name) %>%
  mutate(plays_by_track = n(),
         time_listen_by_track = sum(ms_played)) %>%
  ungroup() %>%
  mutate(month = month(ts)) %>%
  mutate(dayofwk = wday(ts, label=TRUE)) %>%
  mutate(year = year(ts)) %>%
  mutate(month_year = paste0(month, "-", year)) %>%
  mutate(date = as.Date(strtrim(as.character(ts), 10), format = "%Y-%m-%d"))
#-----------------------------------------------------------------------------------#

# Remove df/objects that are no longer needed ---------------------------------------
rm(raw_stream1, raw_stream2, raw_stream_full)
#-----------------------------------------------------------------------------------#

