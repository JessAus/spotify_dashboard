#####################################################################################
# Date: 01/08/2024                                                                  #
# Author: Jessie Ausman                                                             #
# Purpose: Exploratory Data Analysis - Spotify data                                 #
#####################################################################################

# Exploratory Analyses - Full Year --------------------------------------------------

## Create list of unique artists
artists <- unique(clean_stream$master_metadata_album_artist_name)
  #===================================================#
  #   2582 unique artists in full listening history   #
  #===================================================#

## Create list of unique tracks
tracks <- unique(clean_stream$master_metadata_track_name)
  #===================================================#
  #   8131 unique tracks in full listening history    #
  #===================================================#

## Total listening time 2023
listening_ms_23 <- sum(clean_stream$ms_played)
  #===================================================#
  #   4,784,306,291 milliseconds listened             #
  #===================================================#

listening_sec_23 <- listening_ms_23/1000
  #===================================================#
  #     4,784,306.29 seconds listened                 #
  #===================================================#


listening_min_23 <- listening_sec_23/60
  #===================================================#
  #     79,738.438 minutes listened                   #
  #===================================================#


listening_hr_23 <- listening_min_23/60
  #===================================================#
  #     1,328.97 hours listened                       #
  #===================================================#

listening_days_23 <- listening_hr_23/24
  #===================================================#
  #     55 days                                       #
  #===================================================#

## Is the 'top played artist' based on number of plays the same as 'top played artist' based on time played?
top_played_by_num <- clean_stream %>%
  distinct(by = master_metadata_album_artist_name, .keep_all = TRUE) %>%
  group_by(master_metadata_album_artist_name) %>%
  arrange(desc(plays_by_artist)) %>%
  head(5) %>%
  select(c("master_metadata_album_artist_name")) 

top_played_by_time <- clean_stream %>%
  distinct(master_metadata_album_artist_name, .keep_all = TRUE) %>%
  group_by(master_metadata_album_artist_name) %>%
  arrange(desc(time_listen_by_artist)) %>%
  head(5) %>%
  select(c("master_metadata_album_artist_name")) 
  
top_song_by_num <- clean_stream %>%
  distinct(master_metadata_track_name, .keep_all = TRUE) %>%
  group_by(master_metadata_track_name) %>%
  arrange(desc(plays_by_track)) %>%
  head(5) %>%
  select(c("master_metadata_track_name"))

top_song_by_time <- clean_stream %>%
  distinct(master_metadata_track_name, .keep_all = TRUE) %>%
  group_by(master_metadata_track_name) %>%
  arrange(desc(time_listen_by_track)) %>%
  head(5) %>%
  select(c("master_metadata_track_name")) 
#-----------------------------------------------------------------------------------#

# Exploratory Analyses - By Month ---------------------------------------------------

## Is there a difference in the type of music that I listen to at different points in the year?

## What are my top tracks for each month? top artists? 
top_tracks_by_month <- clean_stream %>%
  distinct(master_metadata_track_name, .keep_all = TRUE) %>%
  group_by(month_year) %>%
  arrange(desc(plays_by_track)) %>%
  top_n(5, plays_by_track) %>%
  ungroup() %>%
  select(c("month_year", "master_metadata_track_name", "plays_by_track")) %>%
  group_by(month_year) %>%
  arrange(month_year) 

top_artists_by_month <- clean_stream %>%
  distinct(master_metadata_album_artist_name, .keep_all = TRUE) %>%
  group_by(month_year) %>%
  arrange(desc(plays_by_artist)) %>%
  top_n(5, plays_by_artist) %>%
  ungroup() %>%
  select(c("month_year", "master_metadata_album_artist_name", "plays_by_artist")) %>%
  group_by(month_year) %>%
  arrange(month_year) 

## How much total time did I listen each month?
time_per_month <- clean_stream %>%
  group_by(month_year, dayofwk) %>%
  summarise(min_listen = sum(ms_played)/60000) %>%
  mutate(hrs_listen = min_listen/60)

## How much total time did I listen each year?
time_per_year <- clean_stream %>%
  group_by(year) %>%
  mutate(min_listen = sum(ms_played)/60000) %>%
  mutate(hrs_listen = min_listen/60) %>%
  mutate(days_listen = hrs_listen/24) %>%
  select(date, year, min_listen, hrs_listen, days_listen) %>%
  distinct(.keep_all = TRUE)
#-----------------------------------------------------------------------------------#



# Heatmap DF ------------------------------------------------------------------------
heatmap1 <- clean_stream %>%
  group_by(date) %>%
  mutate(min_listen = sum(ms_played)/60000) %>%
  mutate(hrs_listen = min_listen/60) %>%
  mutate(days_listen = hrs_listen/24) %>%
  select(date, year, min_listen, hrs_listen, days_listen) %>%
  distinct(.keep_all = TRUE)
#-----------------------------------------------------------------------------------#



# Exploratory Analyses - By Day of Week ---------------------------------------------

## What day of the week do I listen to music the most?

## Is there a difference in the type of music that I listen to on different days of the week? -- might have to wait for extended data

## What are top bands/tracks by day of week?

#-----------------------------------------------------------------------------------#

#==================================================================================================================================#
# NOTES:                                                                                                                           #
# is there a way to plot mood of music in one visual and then have a visual with weather on that day right below for reference?    #
#     maybe some sort of overlay??                                                                                                 #
#         What do I listen to on rainy days? What about sunny days? hot/cold?                                                      #
#==================================================================================================================================#

# Remove df/objects that are no longer needed ---------------------------------------
rm()
#-----------------------------------------------------------------------------------#
