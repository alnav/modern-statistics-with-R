# exercise 2.16
library(ggplot2)
ggplot(diamonds, aes(price, cut)) +
  geom_boxplot()

# exercise 2.17
ggplot(diamonds, aes(price)) +
  geom_histogram(color = 'black', fill = 'white') +
  facet_wrap(~ cut)

# exercise 2.18
ggplot(diamonds, aes(cut, fill = clarity)) +
  geom_bar(width = 0.5, position = "dodge") +
  coord_flip()

# exercise 2.19
myPlot <- ggplot(diamonds, aes(cut, fill = clarity)) +
  geom_bar(width = 0.5, position = "dodge") +
  xlab("Diamond Cut Quality") +
  ylab("Count")
ggsave("plot.png", myPlot, width = 8, height = 4)