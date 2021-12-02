### Name:
# Kaleigh White, Rowen Jennings

# Date: 13 December 2021

# Final project code


rm(list = ls()) # remove variables stored in memory.

# add your libraries here

library(tidyverse)

# install.packages("psych")
library(psych)

# add your code here. Be sure to leave your data file(s) in the data/ directory of this repository.

# TODO
# pick the data file
myFile <- file.choose()

# load the datafile as a CSV file
dat <- read.table(myFile, header = TRUE, sep = ",")

# view the dataset
View(dat)

# pulling relevant variables
data <- select(dat, Year, Month, STATE_NAME, COUNTYNAME, Provisional.Drug.Overdose.Deaths)

# filtering data for the states we need
data_zona <- filter(data, STATE_NAME == "Arizona")
data_wash <- filter(data, STATE_NAME == "Washington")
data_miss <- filter(data, STATE_NAME == "Missouri")

# pulling the data for March 2020
data_zona_mar2020 <- data_zona %>% filter(Month == "3", Year == "2020")
View(data_zona_mar2020)
data_wash_mar2020 <- data_wash %>% filter(Month == "3", Year == "2020")
View(data_wash_mar2020)
data_miss_mar2020 <- data_miss %>% filter(Month == "3", Year == "2020")
View(data_miss_mar2020)

# pulling the data for August 2020
data_zona_aug2020 <- data_zona %>% filter(Month == "8", Year == "2020")
View(data_zona_aug2020)
data_wash_aug2020 <- data_wash %>% filter(Month == "8", Year == "2020")
View(data_wash_aug2020)
data_miss_aug2020 <- data_miss %>% filter(Month == "8", Year == "2020")
View(data_miss_aug2020)

# pulling data for December 2020
data_zona_dec2020 <- data_zona %>% filter(Month == "12", Year == "2020")
View(data_zona_dec2020)
data_wash_dec2020 <- data_wash %>% filter(Month == "12", Year == "2020")
View(data_wash_dec2020)
data_miss_dec2020 <- data_miss %>% filter(Month == "12", Year == "2020")
View(data_miss_dec2020)

# trying to mutate the data
dat_mar2021_totals <- mutate(dat_mar2021, Provisional.Drug.Overdose.Deaths <-)

# (Did you remember to add your name to this script?)
