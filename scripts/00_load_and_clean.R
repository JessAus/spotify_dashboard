#####################################################################################
# Date: 01/08/2024                                                                  #
# Author: Jessie Ausman                                                             #
# Purpose: Load and Clean Spotify data                                              #
#####################################################################################

# Load req. packages
pacman::p_load(tidyverse, jsonlite, janitor)

# Read in data & clean column names
raw_stream <- fromJSON("data/StreamingHistory0.json", flatten=TRUE) %>%
  clean_names()
