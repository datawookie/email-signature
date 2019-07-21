library(ggplot2)
library(ggimage)

EXEGETIC_LOGO = "/home/wookie/proj/Z-323-www-exegetic-biz/static/img/exegetic-logo.png"

labels = data.frame(
  x = 8,
  y = c(0.8, 0.6, 0.35, 0.25, 0.15),
  size = c(9, 4, 3, 3, 3),
  hjust = 1,
  fontface = c("plain", "italic", "plain", "plain", "plain"),
  label = c("Andrew B. Collier", "Senior Data Scientist", "+27 (0)83 381 3655", "andrew@exegetic.biz", "www.exegetic.biz")
)

ggplot() +
  geom_text(data = labels, aes(x = x, y = y, label = label, size = size, hjust = hjust, fontface = fontface), nudge_x = 0) +
  geom_image(aes(x = 0, y = 0.5, image = EXEGETIC_LOGO), asp = 8, size = 0.115, hjust = 0) +
  scale_x_continuous(limits = c(0, 8), breaks = seq(0, 8, 0.25)) +
  scale_y_continuous(limits = c(0, 1), breaks = seq(0, 1, 0.25)) +
  scale_size_identity() +
  coord_fixed(1) +
  theme_void() +
  theme(
    axis.text = element_blank(),
    axis.ticks = element_blank(),
    axis.title = element_blank(),
    panel.background = element_rect(fill = "#EEEEEE"),
    plot.margin = unit(c(0, 0, 0, 0), "cm"),
    panel.grid = element_line(colour = "white")
  )

ggsave("test-signature.png", width = 12, height = 1.5, dpi = 150)
