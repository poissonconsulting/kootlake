library(dplyr)
library(magrittr)
library(readr)
library(devtools)

rm(list = ls())

fishery_catch <- read_csv("data-raw/fishery_catch.csv")

fishery_catch %<>% arrange(StartYear)
devtools::use_data(fishery_catch, overwrite = TRUE)
