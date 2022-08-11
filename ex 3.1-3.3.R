# Exercise 3.1
a <- 'A rainy day in Edinburgh'
class(a)

class(1+2)
class(1L + 2)
class(1L + 2L)

#class("Hello" + 1)

class(FALSE * 2)

# Exercise 3.2
library(ggplot2)
ncol(diamonds)
nrow(diamonds)
dim(diamonds)
names(diamonds)
row.names(diamonds)

# Exercise 3.3
x <- 1:6
matrix(x, nrow = 2, ncol = 3)
matrix(x, 3, 2)