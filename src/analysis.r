### Name:
# Kaleigh White, Rowen Jennings

# Date: 13 December 2021

# Final project code


rm(list = ls()) # remove variables stored in memory.

# add your libraries here

library(tidyverse)
library(ggplot2)
library(plotly)

# install.packages("psych")
library(psych)

# add your code here. Be sure to leave your data file(s) in the data/ directory of this repository.

# pick the data file
myFile <- file.choose()

# load the datafile as a CSV file
dat <- read.table(myFile, header = TRUE, sep = ",")

# view the dataset
View(dat)

# pulling relevant variables
data <- select(dat, Year, Month, STATE_NAME, COUNTYNAME, Provisional.Drug.Overdose.Deaths)


# getting all of the data for the states together
dataOurStates <- data %>% filter(STATE_NAME == "Arizona" | STATE_NAME == "Missouri" | STATE_NAME == "Washington")
dataOurStatestwen <- filter(dataOurStates, Year == 2020)
View(dataOurStatestwen)


## Graphing the Drug Deaths of the largest county by population
# Arizona - Maricopa
MaricopaData <- filter(dataOurStatestwen, COUNTYNAME == "Maricopa")
MaricopaArizona <- ggplot(data = MaricopaData) + geom_point(aes(x=Month, y= Provisional.Drug.Overdose.Deaths)) + ggtitle("Maricopa County, Arizona")
MaricopaArizona
# Washington - King
KingData <- filter(dataOurStatestwen, COUNTYNAME == "King")
KingWashington <- ggplot(data = KingData) + geom_point(aes(x=Month, y= Provisional.Drug.Overdose.Deaths)) + ggtitle("King County, Arizona")
KingWashington
# Missouri - St. Louis
StLouisData <- filter(dataOurStatestwen, COUNTYNAME == "St. Louis")
StLouisMissouri <- ggplot(data = StLouisData) + geom_point(aes(x=Month, y= Provisional.Drug.Overdose.Deaths)) + ggtitle("St. Louis County, Missouri")
StLouisMissouri


## Graphing Counties with similar population size (65,700 - 67,000)
# Arizona - Apache (pop. 66,021)
ApacheData <- filter(dataOurStatestwen, COUNTYNAME == "Apache")
ApacheArizona <- ggplot(data = ApacheData) + geom_point(aes(x=Month, y= Provisional.Drug.Overdose.Deaths)) + ggtitle("Apache County, Arizona")
ApacheArizona
# Washington - Mason (pop. 65,726)
MasonData <- filter(dataOurStatestwen, COUNTYNAME == "Mason")
MasonWashington <- ggplot(data = MasonData) + geom_point(aes(x=Month, y= Provisional.Drug.Overdose.Deaths)) + ggtitle("Mason County, Arizona")
MasonWashington
# Missouri - St. Francois (pop. 66,922)
StFrancoisData <- filter(dataOurStatestwen, COUNTYNAME == "St. Francois")
StFrancoisMissouri <- ggplot(data = StFrancoisData) + geom_point(aes(x=Month, y= Provisional.Drug.Overdose.Deaths)) + ggtitle("St. Francois County, Missouri")
StFrancoisMissouri

# (Did you remember to add your name to this script?)
