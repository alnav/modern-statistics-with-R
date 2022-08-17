# Exercise 3.8
file_path <- "C:\\Users\\aless\\Documents\\GitHub\\data\\vas.csv"
vas <- read.csv(file_path, sep = ";", dec = ",", skip = 4)

View(vas)
str(vas)

# Exercise 3.9
install.packages("openxlsx")
file_path2 <- "C:\\Users\\aless\\Documents\\GitHub\\data\\projects-email.xlsx"
emails <- readxl::read_xlsx(file_path2, sheet = 2) # read second sheet
unique_emails <- unique(emails[,3]) # vectors containing emails with no duplicates

# Exercise 3.10
file_path3 <- "C:\\Users\\aless\\Documents\\GitHub\\data\\vas-transposed.csv"
vasT <- as.data.frame(t(read.csv(file_path3, row.names = 1)))

# Exercise 3.11
library(ggplot2)

m <- lm(mpg ~ hp + wt + cyl + am, data = mtcars) # linear regression
summary(m)

# Exercise 3.12
mean_VAS <- aggregate(VAS ~ ID, data = vas, FUN = mean)
max_VAS <- aggregate(VAS ~ ID, data = vas, FUN = max)
min_VAS <- aggregate(VAS ~ ID, data = vas, FUN = min)

vas7 <- vas[vas$VAS >= 7,]
high_VAS_days <- aggregate(VAS ~ ID, data = vas7, FUN = length)

# alternative is aggregate((VAS >= 7) ~ ID, data = vas7, FUN = sum)

# Exercise 3.13
install.packages("datasauRus")
datasaurus <- datasauRus::datasaurus_dozen

meanX <- aggregate(x ~ dataset, data = datasaurus, FUN = mean)
meanY <- aggregate(y ~ dataset, data = datasaurus, FUN = mean)
sdX <- aggregate(x ~ dataset, data = datasaurus, FUN = sd)
sdY <- aggregate(x ~ dataset, data = datasaurus, FUN = sd)
corXY <- by(datasaurus[,2:3], datasaurus$dataset, cor) 

library(ggplot2)
ggplot(datasaurus, aes(x, y, color = dataset)) +
  geom_point() + 
  facet_wrap(~ dataset)

# Exercise 3.14
library(magrittr)
x <- 1:8

x %>% mean %>% sqrt # sqrt(mean(x))
x %>% sqrt %>% mean # mean(sqrt(x))
x %>% raise_to_power(2) %>% subtract(5) %>% extract(1:2) # sort(x^2-5)[1:2]

# Exercise 3.15
age <- c(28, 48, 47, 71, 22, 80, 48, 30, 31)
purchase <- c(20, 59, 2, 12, 22, 160, 34, 34, 29)
visit_length <- c(5, 2, 20, 22, 12, 31, 9, 10, 11)
bookstore <- data.frame(age, purchase, visit_length)

bookstore %>% inset("rev_per_minute", value = .$purchase / .$visit_length)