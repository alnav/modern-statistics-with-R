# exercise 2.11
library(ggplot2)
ggplot(msleep, aes(x = sleep_total, y = awake)) + geom_point()

# exercise 2.12
ggplot(diamonds, aes(x = carat, y = price, colour = cut)) + 
  geom_point(alpha = 0.25) + 
  xlab("Weight of the diamond (carat)") + 
  ylab("Price (USD)")

# exercise 2.13
ggplot(diamonds, aes(x = carat, y = price, shape = cut, size = x)) + 
  geom_point(alpha = 0.25) + 
  xlab("Weight of the diamond (carat)") + 
  ylab("Price (USD)")

# exercise 2.14
ggplot(msleep, aes(bodywt, brainwt, colour = sleep_total)) + 
  geom_point() +
  xlab("Body weight (log)") +
  ylab("Brain weight (log)") +
  scale_x_log10() +
  scale_y_log10()

# exercise 2.15
ggplot(diamonds, aes(carat, price)) + 
  geom_point() +
  xlab("Carat") +
  ylab("Price") +
  facet_wrap(~ cut, nrow = 5)