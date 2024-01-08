#####################################################################################
# Date: 01/08/2024                                                                  #
# Author: Jessie Ausman                                                             #
# Purpose: Exploratory Data Analysis - Spotify data                                 #
#####################################################################################

# Exploratory Analyses - Full Year --------------------------------------------------

## Create list of unique artists
artists <- unique(raw_stream$artist_name)
  #===================================================#
  #   1090 unique artists in 2023 listening history   #
  #===================================================#

## Create list of unique tracks
tracks <- unique(raw_stream$track_name)
  #===================================================#
  #   2814 unique tracks in 2023 listening history    #
  #===================================================#

## Total listening time 2023
listening_ms_23 <- sum(raw_stream$ms_played)
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

#-----------------------------------------------------------------------------------#


# Exploratory Analyses - By Day of Week ---------------------------------------------

# Exploratory Analyses - 
