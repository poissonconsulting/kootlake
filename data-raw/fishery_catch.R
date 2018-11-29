library(dplyr)
library(magrittr)
library(readr)
library(usethis)

rm(list = ls())

fishery_catch <- read_csv("data-raw/fishery_catch.csv") %>%
  mutate(StartYear = as.integer(StartYear), EndYear = as.integer(EndYear))

fishery_catch %<>% arrange(StartYear)
usethis::use_data(fishery_catch, overwrite = TRUE)
