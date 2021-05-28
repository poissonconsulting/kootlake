library(dplyr)
library(magrittr)
library(readr)
library(devtools)

rm(list = ls())

fish <- read_csv("data-raw/fish.csv")
fish %<>% arrange(Year)

fish2020 <- read_csv("data-raw/fish2020.csv")
fish2020 %<>% arrange(Year) %>%
  mutate(Sex = case_when(Sex == "m" ~ "Male",
                         Sex == "f" ~ "Female"),
         Length = Length * 10)

fish %<>% bind_rows(fish2020)

usethis::use_data(fish, overwrite = TRUE)
