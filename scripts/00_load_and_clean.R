#####################################################################################
# Date: 01/08/2024                                                                  #
# Author: Jessie Ausman                                                             #
# Purpose: Load and Clean Spotify data                                              #
#####################################################################################

# Load req. packages ----------------------------------------------------------------
pacman::p_load(tidyverse, jsonlite, janitor, lubridate)
#-----------------------------------------------------------------------------------#


# Read in data & clean column names -------------------------------------------------
raw_stream <- fromJSON("data/StreamingHistory0.json", flatten=TRUE) %>%
  clean_names()
#-----------------------------------------------------------------------------------#

# Add columns for number of plays/time listened by artist/track and day/month (6 cols)
clean_stream <- raw_stream %>%
  group_by(artist_name) %>%
  mutate(plays_by_artist = n(),
         time_listen_by_artist = sum(ms_played)) %>%
  ungroup() %>%
  group_by(track_name) %>%
  mutate(plays_by_track = n(),
         time_listen_by_track = sum(ms_played)) %>%
  ungroup() %>%
  mutate(month = month(end_time)) %>%
  mutate(dayofwk = wday(end_time, label=TRUE))
#-----------------------------------------------------------------------------------#

# Remove df/objects that are no longer needed ---------------------------------------
rm(raw_stream)
#-----------------------------------------------------------------------------------#

