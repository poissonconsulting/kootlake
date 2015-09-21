library(dplyr)
library(magrittr)
library(devtools)

gerrard <- read.csv("data-raw/Gerrard-Escapement-Estimate.csv")
gerrard %<>% arrange(Year) %>% select(Year, PeakCount, FishDays)
devtools::use_data(gerrard, overwrite = TRUE)
