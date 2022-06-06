library(dplyr)
library(magrittr)
library(readr)
library(devtools)

rm(list = ls())

fish <- read_csv("data-raw/fish.csv")
fish %<>% arrange(Year)

fish_recent <- read_csv("data-raw/fish_recent.csv")
fish_recent %<>% arrange(Year) %>%
  mutate(Sex = case_when(Sex == "m" ~ "Male",
                         Sex == "f" ~ "Female"),
         Length = Length * 10)

fish %<>% bind_rows(fish_recent)

usethis::use_data(fish, overwrite = TRUE)
