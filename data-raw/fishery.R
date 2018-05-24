library(dplyr)
library(magrittr)
library(readr)
library(devtools)

rm(list = ls())

fishery <- read_csv("data-raw/fishery.csv")
fishery %<>% arrange(StartYear) %>% select(StartYear, AnglerHours)
devtools::use_data(fishery, overwrite = TRUE)
