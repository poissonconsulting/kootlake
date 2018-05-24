library(dplyr)
library(magrittr)
library(readr)
library(devtools)

rm(list = ls())

fish <- read_csv("data-raw/fish.csv")
fish %<>% arrange(Year)

devtools::use_data(fish, overwrite = TRUE)
