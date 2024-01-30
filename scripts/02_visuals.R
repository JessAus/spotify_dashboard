#####################################################################################
# Date: 01/08/2024                                                                  #
# Author: Jessie Ausman                                                             #
# Purpose: Create Visuals - Spotify data                                            #
#####################################################################################

# Total time listened per month heat map --------------------------------------------

#-----------------------------------------------------------------------------------#

# Top 5 for 2023 --------------------------------------------------------------------

## Artists

## Tracks

#-----------------------------------------------------------------------------------#

# Top 5 per month -------------------------------------------------------------------

## Artists
viz3 <- top_artists_by_month %>%
  ungroup() %>%
  group_by(month_year) %>%
  e_chart(master_metadata_album_artist_name, timeline = TRUE) %>%
  e_pie(plays_by_artist) %>%
  e_legend(show = FALSE) %>%
  e_tooltip()

## Tracks
viz4 <- top_tracks_by_month %>%
  ungroup() %>%
  group_by(month_year) %>%
  e_chart(master_metadata_track_name, timeline = TRUE) %>%
  e_pie(plays_by_track) %>%
  e_legend(show = FALSE) %>%
  e_tooltip()

## Listening time
heat_2019 <- heatmap1 %>%
  ungroup() %>%
  group_by(year) %>%
  e_charts(date) %>%
  e_calendar(range = "2019", top = 40) %>%
  e_heatmap(min_listen, coord_system = "calendar") %>%
  e_visual_map(max = 430)

heat_2020 <- heatmap1 %>%
  ungroup() %>%
  group_by(year) %>%
  e_charts(date) %>%
  e_calendar(range = "2020", top = 40) %>%
  e_heatmap(min_listen, coord_system = "calendar") %>%
  e_visual_map(max = 420)

heat_2021 <- heatmap1 %>%
  ungroup() %>%
  group_by(year) %>%
  e_charts(date) %>%
  e_calendar(range = "2021", top = 40) %>%
  e_heatmap(min_listen, coord_system = "calendar") %>%
  e_visual_map(max = 350)

heat_2022 <- heatmap1 %>%
  ungroup() %>%
  group_by(year) %>%
  e_charts(date) %>%
  e_calendar(range = "2022", top = 40) %>%
  e_heatmap(min_listen, coord_system = "calendar") %>%
  e_visual_map(max = 260)

heat_2023 <- heatmap1 %>%
  ungroup() %>%
  group_by(year) %>%
  e_charts(date) %>%
  e_calendar(range = "2023", top = 40) %>%
  e_heatmap(min_listen, coord_system = "calendar") %>%
  e_visual_map(max = 300)

#-----------------------------------------------------------------------------------#


# Top 5 per day of week ------------------------------------------------------------

## Artists

## Tracks

#-----------------------------------------------------------------------------------#
