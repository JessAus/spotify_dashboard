#####################################################################################
# Date: 01/08/2024                                                                  #
# Author: Jessie Ausman                                                             #
# Purpose: Exploratory Data Analysis - Spotify data                                 #
#####################################################################################

# Exploratory Analyses - Full Year --------------------------------------------------

## Create list of unique artists
artists <- unique(clean_stream$artist_name)
  #===================================================#
  #   1090 unique artists in 2023 listening history   #
  #===================================================#

## Create list of unique tracks
tracks <- unique(clean_stream$track_name)
  #===================================================#
  #   2814 unique tracks in 2023 listening history    #
  #===================================================#

## Total listening time 2023
listening_ms_23 <- sum(clean_stream$ms_played)
  #===================================================#
  #   1,381,530,970 milliseconds listened             #
  #===================================================#

listening_sec_23 <- listening_ms_23/1000
  #===================================================#
  #     1,381,530.97 seconds listened                 #
  #===================================================#


listening_min_23 <- listening_sec_23/60
  #===================================================#
  #     23,025.516 minutes listened                   #
  #===================================================#


listening_hr_23 <- listening_min_23/60
  #===================================================#
  #     383.759 hours listened                        #
  #===================================================#

listening_days_23 <- listening_hr_23/24
  #===================================================#
  #     16 days                                       #
  #===================================================#

## Is the 'top played artist' based on number of plays the same as 'top played artist' based on time played?
top_played_by_num <- clean_stream %>%
  distinct(by = artist_name, .keep_all = TRUE) %>%
  group_by(artist_name) %>%
  arrange(desc(plays_by_artist)) %>%
  head(5) %>%
  select(c("artist_name")) 

top_played_by_time <- clean_stream %>%
  distinct(artist_name, .keep_all = TRUE) %>%
  group_by(artist_name) %>%
  arrange(desc(time_listen_by_artist)) %>%
  head(5) %>%
  select(c("artist_name")) 
  
top_song_by_num <- clean_stream %>%
  distinct(track_name, .keep_all = TRUE) %>%
  group_by(track_name) %>%
  arrange(desc(plays_by_track)) %>%
  head(5) %>%
  select(c("track_name"))

top_song_by_time <- clean_stream %>%
  distinct(track_name, .keep_all = TRUE) %>%
  group_by(track_name) %>%
  arrange(desc(time_listen_by_track)) %>%
  head(5) %>%
  select(c("track_name")) 
#-----------------------------------------------------------------------------------#

# Exploratory Analyses - By Month ---------------------------------------------------

## Is there a difference in the type of music that I listen to at different points in the year?

## What are my top tracks for each month? top artists? 
top_tracks_by_month <- clean_stream %>%
  distinct(track_name, .keep_all = TRUE) %>%
  group_by(month) %>%
  arrange(desc(plays_by_track)) %>%
  top_n(5, plays_by_track) %>%
  ungroup() %>%
  select(c("month", "track_name", "plays_by_track")) %>%
  group_by(month) %>%
  arrange(month) 

top_artists_by_month <- clean_stream %>%
  distinct(artist_name, .keep_all = TRUE) %>%
  group_by(month) %>%
  arrange(desc(plays_by_artist)) %>%
  top_n(5, plays_by_artist) %>%
  ungroup() %>%
  select(c("month", "artist_name", "plays_by_artist")) %>%
  group_by(month) %>%
  arrange(month) 
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
