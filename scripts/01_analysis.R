#####################################################################################
# Date: 01/08/2024                                                                  #
# Author: Jessie Ausman                                                             #
# Purpose: Exploratory Data Analysis - Spotify data                                 #
#####################################################################################

# Exploratory Analyses - Full Year --------------------------------------------------

## Create list of unique artists
artists <- unique(raw_stream$artist_name)
  ### 1090 unique artists in 2023 listening history ###

## Create list of unique tracks
tracks <- unique(raw_stream$track_name)
  ### 2814 unique tracks in 2023 listening history  ###

## Total listening time 2023
listening_ms_23 <- sum(raw_stream$ms_played)
  ### 1,381,530,970 milliseconds listened ###

listening_sec_23 <- listening_ms_23/1000
  ### 1,381,530.97 seconds listened ###

listening_min_23 <- listening_sec_23/60
  ### 23,025.516 minutes listened ###

listening_hr_23 <- listening_min_23/60
  ### 383.759 hours listened  ###

listening_days_23 <- listening_hr_23/24
  ### 16 days ###

## Number of plays by artist
clean_stream <- raw_stream %>%
  group_by(artist_name) %>%
  mutate(plays_by_artist = n(),
         time_listen_by_artist = sum(ms_played)) %>%
  ungroup() %>%
  group_by(track_name) %>%
  mutate(plays_by_track = n(),
         time_listen_by_track = sum(ms_played)) 

#-----------------------------------------------------------------------------------#

# Exploratory Analyses - By Month ---------------------------------------------------

# Exploratory Analyses - By Day of Week ---------------------------------------------

# Exploratory Analyses - 
