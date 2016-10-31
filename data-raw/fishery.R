library(dplyr)
library(magrittr)
library(devtools)

rm(list = ls())

fishery <- read.csv("data-raw/fishery.csv")
fishery %<>% arrange(Year) %>% select(Year, AnglerHours)
devtools::use_data(fishery, overwrite = TRUE)
