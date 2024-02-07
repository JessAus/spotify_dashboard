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

artist_bars_2019 <- top_artists_by_month_19 %>%
  mutate(month = case_when(
    month == 1 ~ "Jan",
    month == 2 ~ "Feb",
    month == 3 ~ "Mar",
    month == 4 ~ "Apr",
    month == 5 ~ "May",
    month == 6 ~ "Jun",
    month == 7 ~ "Jul",
    month == 8 ~ "Aug",
    month == 9 ~ "Sep",
    month == 10 ~ "Oct",
    month == 11 ~ "Nov",
    month == 12 ~ "Dec"
  )) %>%
  ungroup() %>%
  e_chart(month) %>%
  e_bar(artist_plays, bind = master_metadata_album_artist_name, itemStyle = list(
    borderColor = "black"
  )) %>%
  e_legend(show = FALSE) %>%
  e_y_axis(nameLocation = "middle", nameGap = 60) %>%
  e_x_axis(nameLocation = "middle", nameGap = 25) %>%
  e_axis_labels(x = "Month", y = "Plays") %>%
  e_tooltip(formatter = htmlwidgets::JS("
                                        function(params){
                                        var vals = params.value
                                        var tooltip = '<strong>' + params.name + '</strong><br />Plays: ' + params.value[1] 
                                        return(tooltip)
                                        }
                                        ")) %>%
e_color(color = "#c1564c",
        background = list(
          type = 'linear',
          x = 0,
          y = 0,
          x2 = 0,
          y2 = 1,
          colorStops = list(list(
            offset = 0,
            color = "#fe8a7d"
          ),
          list(
            offset = 1,
            color = "#f9d592"
          )),
          global = FALSE
        )) %>%
  e_text_style(color = "black")
## Need to add in list for beginning and end of mark area xaxis = yaxis = x2

artist_bars_2020 <- top_artists_by_month_20 %>%
  mutate(month = case_when(
    month == 1 ~ "Jan",
    month == 2 ~ "Feb",
    month == 3 ~ "Mar",
    month == 4 ~ "Apr",
    month == 5 ~ "May",
    month == 6 ~ "Jun",
    month == 7 ~ "Jul",
    month == 8 ~ "Aug",
    month == 9 ~ "Sep",
    month == 10 ~ "Oct",
    month == 11 ~ "Nov",
    month == 12 ~ "Dec"
  )) %>%
  ungroup() %>%
  e_chart(month) %>%
  e_bar(artist_plays, bind = master_metadata_album_artist_name, itemStyle = list(
    borderColor = "black"
  )) %>%
  e_legend(show = FALSE) %>%
  e_y_axis(nameLocation = "middle", nameGap = 60) %>%
  e_x_axis(nameLocation = "middle", nameGap = 25) %>%
  e_axis_labels(x = "Month", y = "Plays") %>%
  e_tooltip(formatter = htmlwidgets::JS("
                                        function(params){
                                        var vals = params.value
                                        var tooltip = '<strong>' + params.name + '</strong><br />Plays: ' + params.value[1] 
                                        return(tooltip)
                                        }
                                        ")) %>%
  e_color(color = "#c1564c",
          background = list(
            type = 'linear',
            x = 0,
            y = 0,
            x2 = 0,
            y2 = 1,
            colorStops = list(list(
              offset = 0,
              color = "#fe8a7d"
            ),
            list(
              offset = 1,
              color = "#f9d592"
            )),
            global = FALSE
          )) %>%
  e_text_style(color = "black")

artist_bars_2021 <- top_artists_by_month_21 %>%
  mutate(month = case_when(
    month == 1 ~ "Jan",
    month == 2 ~ "Feb",
    month == 3 ~ "Mar",
    month == 4 ~ "Apr",
    month == 5 ~ "May",
    month == 6 ~ "Jun",
    month == 7 ~ "Jul",
    month == 8 ~ "Aug",
    month == 9 ~ "Sep",
    month == 10 ~ "Oct",
    month == 11 ~ "Nov",
    month == 12 ~ "Dec"
  )) %>%
  ungroup() %>%
  e_chart(month) %>%
  e_bar(artist_plays, bind = master_metadata_album_artist_name, itemStyle = list(
    borderColor = "black"
  )) %>%
  e_legend(show = FALSE) %>%
  e_y_axis(nameLocation = "middle", nameGap = 60) %>%
  e_x_axis(nameLocation = "middle", nameGap = 25) %>%
  e_axis_labels(x = "Month", y = "Plays") %>%
  e_tooltip(formatter = htmlwidgets::JS("
                                        function(params){
                                        var vals = params.value
                                        var tooltip = '<strong>' + params.name + '</strong><br />Plays: ' + params.value[1] 
                                        return(tooltip)
                                        }
                                        ")) %>%
  e_color(color = "#c1564c",
          background = list(
            type = 'linear',
            x = 0,
            y = 0,
            x2 = 0,
            y2 = 1,
            colorStops = list(list(
              offset = 0,
              color = "#fe8a7d"
            ),
            list(
              offset = 1,
              color = "#f9d592"
            )),
            global = FALSE
          )) %>%
  e_text_style(color = "black")

artist_bars_2022 <- top_artists_by_month_22 %>%
  mutate(month = case_when(
    month == 1 ~ "Jan",
    month == 2 ~ "Feb",
    month == 3 ~ "Mar",
    month == 4 ~ "Apr",
    month == 5 ~ "May",
    month == 6 ~ "Jun",
    month == 7 ~ "Jul",
    month == 8 ~ "Aug",
    month == 9 ~ "Sep",
    month == 10 ~ "Oct",
    month == 11 ~ "Nov",
    month == 12 ~ "Dec"
  )) %>%
  ungroup() %>%
  e_chart(month) %>%
  e_bar(artist_plays, bind = master_metadata_album_artist_name, itemStyle = list(
    borderColor = "black"
  )) %>%
  e_legend(show = FALSE) %>%
  e_y_axis(nameLocation = "middle", nameGap = 60) %>%
  e_x_axis(nameLocation = "middle", nameGap = 25) %>%
  e_axis_labels(x = "Month", y = "Plays") %>%
  e_tooltip(formatter = htmlwidgets::JS("
                                        function(params){
                                        var vals = params.value
                                        var tooltip = '<strong>' + params.name + '</strong><br />Plays: ' + params.value[1] 
                                        return(tooltip)
                                        }
                                        ")) %>%
  e_color(color = "#c1564c",
          background = list(
            type = 'linear',
            x = 0,
            y = 0,
            x2 = 0,
            y2 = 1,
            colorStops = list(list(
              offset = 0,
              color = "#fe8a7d"
            ),
            list(
              offset = 1,
              color = "#f9d592"
            )),
            global = FALSE
          )) %>%
  e_text_style(color = "black")

artist_bars_2023 <- top_artists_by_month_23 %>%
  mutate(month = case_when(
    month == 1 ~ "Jan",
    month == 2 ~ "Feb",
    month == 3 ~ "Mar",
    month == 4 ~ "Apr",
    month == 5 ~ "May",
    month == 6 ~ "Jun",
    month == 7 ~ "Jul",
    month == 8 ~ "Aug",
    month == 9 ~ "Sep",
    month == 10 ~ "Oct",
    month == 11 ~ "Nov",
    month == 12 ~ "Dec"
  )) %>%
  ungroup() %>%
  e_chart(month) %>%
  e_bar(artist_plays, bind = master_metadata_album_artist_name, itemStyle = list(
    borderColor = "black"
  )) %>%
  e_legend(show = FALSE) %>%
  e_y_axis(nameLocation = "middle", nameGap = 60) %>%
  e_x_axis(nameLocation = "middle", nameGap = 25) %>%
  e_axis_labels(x = "Month", y = "Plays") %>%
  e_tooltip(formatter = htmlwidgets::JS("
                                        function(params){
                                        var vals = params.value
                                        var tooltip = '<strong>' + params.name + '</strong><br />Plays: ' + params.value[1] 
                                        return(tooltip)
                                        }
                                        ")) %>%
  e_color(color = "#c1564c",
          background = list(
            type = 'linear',
            x = 0,
            y = 0,
            x2 = 0,
            y2 = 1,
            colorStops = list(list(
              offset = 0,
              color = "#fe8a7d"
            ),
            list(
              offset = 1,
              color = "#f9d592"
            )),
            global = FALSE
          )) %>%
  e_text_style(color = "black")


## Tracks
tracks_bars_2019 <- top_tracks_by_month_19 %>%
  mutate(month = case_when(
    month == 1 ~ "Jan",
    month == 2 ~ "Feb",
    month == 3 ~ "Mar",
    month == 4 ~ "Apr",
    month == 5 ~ "May",
    month == 6 ~ "Jun",
    month == 7 ~ "Jul",
    month == 8 ~ "Aug",
    month == 9 ~ "Sep",
    month == 10 ~ "Oct",
    month == 11 ~ "Nov",
    month == 12 ~ "Dec"
  )) %>%
  ungroup() %>%
  e_chart(month) %>%
  e_bar(track_plays, bind = master_metadata_track_name, itemStyle = list(
    borderColor = "black"
  )) %>%
  e_legend(show = FALSE) %>%
  e_y_axis(nameLocation = "middle", nameGap = 60) %>%
  e_x_axis(nameLocation = "middle", nameGap = 25) %>%
  e_axis_labels(x = "Month", y = "Plays") %>%
  e_tooltip(formatter = htmlwidgets::JS("
                                        function(params){
                                        var vals = params.value
                                        var tooltip = '<strong>' + params.name + '</strong><br />Plays: ' + params.value[1] 
                                        return(tooltip)
                                        }
                                        ")) %>%
  e_color(color = "#883c77",
          background = list(
            type = 'linear',
            x = 0,
            y = 0,
            x2 = 0,
            y2 = 1,
            colorStops = list(list(
              offset = 0,
              color = "#86A8E7"
            ),
            list(
              offset = 1,
              color = "#5FFBF1"
            )),
            global = FALSE
          )) %>%
  e_text_style(color = "black")
## Need to add in list for beginning and end of mark area xaxis = yaxis = x2

tracks_bars_2020 <- top_tracks_by_month_20 %>%
  mutate(month = case_when(
    month == 1 ~ "Jan",
    month == 2 ~ "Feb",
    month == 3 ~ "Mar",
    month == 4 ~ "Apr",
    month == 5 ~ "May",
    month == 6 ~ "Jun",
    month == 7 ~ "Jul",
    month == 8 ~ "Aug",
    month == 9 ~ "Sep",
    month == 10 ~ "Oct",
    month == 11 ~ "Nov",
    month == 12 ~ "Dec"
  )) %>%
  ungroup() %>%
  e_chart(month) %>%
  e_bar(track_plays, bind = master_metadata_track_name, itemStyle = list(
    borderColor = "black"
  )) %>%
  e_legend(show = FALSE) %>%
  e_y_axis(nameLocation = "middle", nameGap = 60) %>%
  e_x_axis(nameLocation = "middle", nameGap = 25) %>%
  e_axis_labels(x = "Month", y = "Plays") %>%
  e_tooltip(formatter = htmlwidgets::JS("
                                        function(params){
                                        var vals = params.value
                                        var tooltip = '<strong>' + params.name + '</strong><br />Plays: ' + params.value[1] 
                                        return(tooltip)
                                        }
                                        ")) %>%
  e_color(color = "#883c77",
          background = list(
            type = 'linear',
            x = 0,
            y = 0,
            x2 = 0,
            y2 = 1,
            colorStops = list(list(
              offset = 0,
              color = "#86A8E7"
            ),
            list(
              offset = 1,
              color = "#5FFBF1"
            )),
            global = FALSE
          )) %>%
  e_text_style(color = "black")

tracks_bars_2021 <- top_tracks_by_month_21 %>%
  mutate(month = case_when(
    month == 1 ~ "Jan",
    month == 2 ~ "Feb",
    month == 3 ~ "Mar",
    month == 4 ~ "Apr",
    month == 5 ~ "May",
    month == 6 ~ "Jun",
    month == 7 ~ "Jul",
    month == 8 ~ "Aug",
    month == 9 ~ "Sep",
    month == 10 ~ "Oct",
    month == 11 ~ "Nov",
    month == 12 ~ "Dec"
  )) %>%
  ungroup() %>%
  e_chart(month) %>%
  e_bar(track_plays, bind = master_metadata_track_name, itemStyle = list(
    borderColor = "black"
  )) %>%
  e_legend(show = FALSE) %>%
  e_y_axis(nameLocation = "middle", nameGap = 60) %>%
  e_x_axis(nameLocation = "middle", nameGap = 25) %>%
  e_axis_labels(x = "Month", y = "Plays") %>%
  e_tooltip(formatter = htmlwidgets::JS("
                                        function(params){
                                        var vals = params.value
                                        var tooltip = '<strong>' + params.name + '</strong><br />Plays: ' + params.value[1] 
                                        return(tooltip)
                                        }
                                        ")) %>%
  e_color(color = "#883c77",
          background = list(
            type = 'linear',
            x = 0,
            y = 0,
            x2 = 0,
            y2 = 1,
            colorStops = list(list(
              offset = 0,
              color = "#86A8E7"
            ),
            list(
              offset = 1,
              color = "#5FFBF1"
            )),
            global = FALSE
          )) %>%
  e_text_style(color = "black")

tracks_bars_2022 <- top_tracks_by_month_22 %>%
  mutate(month = case_when(
    month == 1 ~ "Jan",
    month == 2 ~ "Feb",
    month == 3 ~ "Mar",
    month == 4 ~ "Apr",
    month == 5 ~ "May",
    month == 6 ~ "Jun",
    month == 7 ~ "Jul",
    month == 8 ~ "Aug",
    month == 9 ~ "Sep",
    month == 10 ~ "Oct",
    month == 11 ~ "Nov",
    month == 12 ~ "Dec"
  )) %>%
  ungroup() %>%
  e_chart(month) %>%
  e_bar(track_plays, bind = master_metadata_track_name, itemStyle = list(
    borderColor = "black"
  )) %>%
  e_legend(show = FALSE) %>%
  e_y_axis(nameLocation = "middle", nameGap = 60) %>%
  e_x_axis(nameLocation = "middle", nameGap = 25) %>%
  e_axis_labels(x = "Month", y = "Plays") %>%
  e_tooltip(formatter = htmlwidgets::JS("
                                        function(params){
                                        var vals = params.value
                                        var tooltip = '<strong>' + params.name + '</strong><br />Plays: ' + params.value[1] 
                                        return(tooltip)
                                        }
                                        ")) %>%
  e_color(color = "#883c77",
          background = list(
            type = 'linear',
            x = 0,
            y = 0,
            x2 = 0,
            y2 = 1,
            colorStops = list(list(
              offset = 0,
              color = "#86A8E7"
            ),
            list(
              offset = 1,
              color = "#5FFBF1"
            )),
            global = FALSE
          )) %>%
  e_text_style(color = "black")


tracks_bars_2023 <- top_tracks_by_month_23 %>%
  mutate(month = case_when(
    month == 1 ~ "Jan",
    month == 2 ~ "Feb",
    month == 3 ~ "Mar",
    month == 4 ~ "Apr",
    month == 5 ~ "May",
    month == 6 ~ "Jun",
    month == 7 ~ "Jul",
    month == 8 ~ "Aug",
    month == 9 ~ "Sep",
    month == 10 ~ "Oct",
    month == 11 ~ "Nov",
    month == 12 ~ "Dec"
  )) %>%
  ungroup() %>%
  e_chart(month) %>%
  e_bar(track_plays, bind = master_metadata_track_name, itemStyle = list(
    borderColor = "black"
  )) %>%
  e_legend(show = FALSE) %>%
  e_y_axis(nameLocation = "middle", nameGap = 60) %>%
  e_x_axis(nameLocation = "middle", nameGap = 25) %>%
  e_axis_labels(x = "Month", y = "Plays") %>%
  e_tooltip(formatter = htmlwidgets::JS("
                                        function(params){
                                        var vals = params.value
                                        var tooltip = '<strong>' + params.name + '</strong><br />Plays: ' + params.value[1] 
                                        return(tooltip)
                                        }
                                        ")) %>%
  e_color(color = "#883c77",
          background = list(
            type = 'linear',
            x = 0,
            y = 0,
            x2 = 0,
            y2 = 1,
            colorStops = list(list(
              offset = 0,
              color = "#86A8E7"
            ),
            list(
              offset = 1,
              color = "#5FFBF1"
            )),
            global = FALSE
          )) %>%
  e_text_style(color = "black")


# viz4 <- top_tracks_by_month %>%
#   ungroup() %>%
#   group_by(month) %>%
#   e_chart(master_metadata_track_name, timeline = TRUE) %>%
#   e_bar(plays_by_track) %>%
#   e_legend(show = FALSE) %>%
#   e_tooltip()



## Listening time
heat_2019 <- heatmap1 %>%
  ungroup() %>%
  group_by(year) %>%
  e_charts(date) %>%
  e_calendar(range = "2019", top = 90, left = 130, dayLabel = list(color = "white"), monthLabel = list(color = "white")) %>%
  e_heatmap(min_listen, coord_system = "calendar",
            label = list(color = "white")) %>%
  e_visual_map(max = 430, textStyle = list(color = "white")) %>%
  e_tooltip() %>%
  e_text_style(
    color = "white"
  ) %>%
  e_title("Listening Time per Day", "(Listening Time in Minutes)", textStyle = list(color = "white"), subtextStyle = list(color = "white"))

heat_2020 <- heatmap1 %>%
  ungroup() %>%
  group_by(year) %>%
  e_charts(date) %>%
  e_calendar(range = "2020", top = 90, left = 130, dayLabel = list(color = "white"), monthLabel = list(color = "white")) %>%
  e_heatmap(min_listen, coord_system = "calendar",
            label = list(color = "white")) %>%
  e_visual_map(max = 420, textStyle = list(color = "white")) %>%
  e_tooltip() %>%
  e_text_style(
    color = "white"
  ) %>%
  e_title("Listening Time per Day", "(Listening Time in Minutes)", textStyle = list(color = "white"), subtextStyle = list(color = "white"))

heat_2021 <- heatmap1 %>%
  ungroup() %>%
  group_by(year) %>%
  e_charts(date) %>%
  e_calendar(range = "2021", top = 90, left = 130, dayLabel = list(color = "white"), monthLabel = list(color = "white")) %>%
  e_heatmap(min_listen, coord_system = "calendar",
            label = list(color = "white")) %>%
  e_visual_map(max = 350, textStyle = list(color = "white")) %>%
  e_tooltip() %>%
  e_text_style(
    color = "white"
  ) %>%
  e_title("Listening Time per Day", "(Listening Time in Minutes)", textStyle = list(color = "white"), subtextStyle = list(color = "white"))

heat_2022 <- heatmap1 %>%
  ungroup() %>%
  group_by(year) %>%
  e_charts(date) %>%
  e_calendar(range = "2022", top = 90, left = 130, dayLabel = list(color = "white"), monthLabel = list(color = "white")) %>%
  e_heatmap(min_listen, coord_system = "calendar",
            label = list(color = "white")) %>%
  e_visual_map(max = 260, textStyle = list(color = "white")) %>%
  e_tooltip() %>%
  e_text_style(
    color = "white"
  ) %>%
  e_title("Listening Time per Day", "(Listening Time in Minutes)", textStyle = list(color = "white"), subtextStyle = list(color = "white"))

heat_2023 <- heatmap1 %>%
  ungroup() %>%
  group_by(year) %>%
  e_charts(date) %>%
  e_calendar(range = "2023", top = 90, left = 130, dayLabel = list(color = "white"), monthLabel = list(color = "white")) %>%
  e_heatmap(min_listen, coord_system = "calendar",
            label = list(color = "white")) %>%
  e_visual_map(max = 300, textStyle = list(color = "white")) %>%
  e_tooltip() %>%
  e_text_style(
    color = "white"
  ) %>%
  e_title("Listening Time per Day", "(Listening Time in Minutes)", textStyle = list(color = "white"), subtextStyle = list(color = "white"))

#-----------------------------------------------------------------------------------#


# Top 5 per day of week ------------------------------------------------------------

## Artists

## Tracks

#-----------------------------------------------------------------------------------#
