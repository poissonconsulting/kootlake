library(dplyr)
library(magrittr)
library(readr)
library(usethis)

rm(list = ls())

bulltrout <- read_csv("data-raw/bulltrout.csv") %>%
  mutate(Year = as.integer(Year), KasloRedds = as.integer(KasloRedds), KeenRedds = as.integer(KeenRedds),
         KasloCounter = as.integer(KasloCounter))

bulltrout %<>% arrange(Year)
usethis::use_data(bulltrout, overwrite = TRUE)
