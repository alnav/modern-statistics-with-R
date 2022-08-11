# Exercise 3.5
age <- c(28, 48, 47, 71, 22, 80, 48, 30, 31)
purchase <- c(20, 59, 2, 12, 22, 160, 34, 34, 29)
bookstore <- data.frame(age, purchase)

bookstore$visit_length <- c(5, 2, 20, 22, 12, 31, 9, 10, 11)
bookstore$rev_per_minute <- bookstore$purchase / bookstore$visit_length
bookstore$purchase[6] <- 16
bookstore$rev_per_minute <- bookstore$purchase / bookstore$visit_length
bookstore[bookstore$purchase > 20,]


# Exercise 3.6
library(ggplot2)

airquality[which.min(airquality$Temp),]
sum(airquality$Wind > 17)
sum(is.na(airquality$Ozone))
sum(airquality$Temp < 70 & airquality$Wind > 10)

# Exercise 3.7
airquality$TempCat <- cut(airquality$Temp,
                          breaks = c(50, 70, 90, 110))

