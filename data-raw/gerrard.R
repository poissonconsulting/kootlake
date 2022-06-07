library(dplyr)
library(magrittr)
library(readr)
library(usethis)
rm(list = ls())

gerrard <- read_csv("data-raw/gerrard.csv")

gerrard %<>%
  filter(Year >= 1961) %>%
  arrange(Year) %>%
  select(Year, PeakCount, FishDays) %>%
  mutate(
    Year = as.integer(Year),
    PeakCount = as.integer(PeakCount),
    FishDays = as.integer(FishDays),
    FishRemoved = case_when(
      Year == 2022 ~ 150,
      TRUE ~ 0
      )
    )

usethis::use_data(gerrard, overwrite = TRUE)
