library(dplyr)
library(magrittr)
library(readr)
library(usethis)

rm(list = ls())

fishery <- read_csv("data-raw/fishery.csv")

fishery %<>% arrange(StartYear) %>%
  mutate(EndYear = StartYear + 1L, StartYear = as.integer(StartYear), EndYear = as.integer(EndYear)) %>%
  select(StartYear, EndYear, AnglerHours)

usethis::use_data(fishery, overwrite = TRUE)
