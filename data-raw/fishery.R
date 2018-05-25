library(dplyr)
library(magrittr)
library(readr)
library(devtools)

rm(list = ls())

fishery <- read_csv("data-raw/fishery.csv")
fishery %<>% arrange(StartYear) %>%
  mutate(EndYear = StartYear + 1L) %>%
  select(StartYear, EndYear, AnglerHours)
devtools::use_data(fishery, overwrite = TRUE)
