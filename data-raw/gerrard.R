library(dplyr)
library(magrittr)
library(devtools)

rm(list = ls())

gerrard <- read.csv("data-raw/gerrard.csv")
gerrard %<>% arrange(Year) %>% select(Year, PeakCount, FishDays)
devtools::use_data(gerrard, overwrite = TRUE)
