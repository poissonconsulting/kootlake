library(dplyr)
library(magrittr)
library(readr)
library(devtools)

rm(list = ls())

Fish <- read_csv("data-raw/Fish.csv")
Fish %<>% arrange(Year)

devtools::use_data(Fish, overwrite = TRUE)