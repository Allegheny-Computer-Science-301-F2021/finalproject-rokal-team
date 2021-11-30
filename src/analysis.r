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

# (Did you remember to add your name to this script?)
