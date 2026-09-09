library(tidyverse)

top_songs <- billboard |>
  pivot_longer(
    cols = starts_with("wk"),
    names_to = "week",
    values_to = "rank"
  ) |>
  mutate(week = parse_number(week))

write_rds(top_songs, file = "clean_data.rds")
