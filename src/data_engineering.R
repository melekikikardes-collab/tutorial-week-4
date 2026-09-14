# Load the data

library(tidyverse)
library(dplyr)
video_view <- read_csv("data/video_view.csv")




# Exercise 1

video_features <- video_view %>%
  mutate(
    watch_rate_rank = rank(-watch_rate),
    reach_band = case_when(
      impressions_n < 20 ~ "Low",
      impressions_n < 60 ~ "Medium",
      TRUE ~ "High"
    ),
    high_quality = avg_watch_share >= 0.40
  ) %>%
  distinct(video_id, .keep_all = TRUE) %>%
  arrange(watch_rate_rank)

write_csv(video_features, "temp/video_features.csv")
video_features %>%
  select(video_id, creator_id, impressions_n, watch_rate, watch_rate_rank, reslice_head(n = 10))



# Exercise 2



# Exercise 3



# Exercise 4



# Exercise 5
