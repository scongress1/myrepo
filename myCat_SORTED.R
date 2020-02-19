rm(list = ls())

getwd()

install.packages("tidyverse")
library("tidyverse")

myCat <- read_csv("MyCat_Table.csv")

View(myCat)

myCat[order(myCat$bytes),]
