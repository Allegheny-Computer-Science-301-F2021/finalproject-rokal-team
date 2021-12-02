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

# pulling just the data for March 2021
dat_mar2021 <- data %>% filter(Month == "3", Year == "2021")
View(dat_mar2021)

# pulling just the data for February 2021
dat_feb2021 <- data %>% filter(Month == "2", Year == "2021")
View(dat_feb2021)

dat_mar2021_totals <- mutate(dat_mar2021, Provisional.Drug.Overdose.Deaths <-)

# (Did you remember to add your name to this script?)
