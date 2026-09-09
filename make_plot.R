library(tidyverse)

top_songs <- read_rds("clean_data.rds")

billboard_plot <- top_songs |>
  ggplot(aes(x = week, y = rank, group = track, color = artist)) +
  geom_line(alpha = 0.6, linewidth = 0.8) +
  scale_y_reverse() +
  labs(
    title = "Billboard Hot 100 trajectory",
    x = "Week",
    y = "Rank",
    color = "Artist"
  ) +
  theme_minimal(base_size = 12) +
  theme(
    legend.position = "bottom",
    panel.grid.minor = element_blank()
  )

ggsave("billboard.png", plot = billboard_plot, width = 8, height = 5, dpi = 300)
