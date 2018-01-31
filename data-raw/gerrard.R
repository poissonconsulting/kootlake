library(dplyr)
library(magrittr)
library(readr)
library(devtools)

rm(list = ls())

gerrard <- read_csv("data-raw/gerrard.csv")
gerrard %<>% arrange(Year) %>% select(Year, PeakCount, FishDays)
devtools::use_data(gerrard, overwrite = TRUE)
