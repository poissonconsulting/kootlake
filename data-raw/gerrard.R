library(dplyr)
library(magrittr)
library(readr)
library(usethis)
rm(list = ls())

fish_removed <- readxl::read_excel("data-raw/GerrardRemoved.xlsx")

gerrard <- readxl::read_excel(
  "data-raw/Gerrard data for Evan 2024.xlsx",
  sheet = "Spawner count",
  skip = 15
) %>%
  suppressMessages() %>%
  select(
    Year = `...1`, PeakCount = count, FishDays = `(fish*days)`
  ) %>%
  left_join(fish_removed, by = "Year") %>%
  mutate(
    PeakCount = as.integer(PeakCount),
    FishRemoved = if_else(is.na(FishRemoved), 0L, as.integer(FishRemoved)),
    Year = as.integer(Year)
  ) %>%
  arrange(Year)

usethis::use_data(gerrard, overwrite = TRUE)
