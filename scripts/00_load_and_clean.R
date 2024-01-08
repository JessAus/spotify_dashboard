#####################################################################################
# Date: 01/08/2024                                                                  #
# Author: Jessie Ausman                                                             #
# Purpose: Load and Clean Spotify data                                              #
#####################################################################################

# Load req. packages
pacman::p_load(tidyverse, jsonlite)

# Read in data
raw_streaming_history <- fromJSON("data/StreamingHistory0.json", flatten=TRUE)

