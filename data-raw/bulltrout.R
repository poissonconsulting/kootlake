library(dplyr)
library(magrittr)
library(readr)
library(devtools)

rm(list = ls())

bulltrout <- read_csv("data-raw/bulltrout.csv")

bulltrout %<>% arrange(Year)
devtools::use_data(bulltrout, overwrite = TRUE)
