library(dplyr)
library(magrittr)
library(readr)
library(devtools)

rm(list = ls())

fish <- read_csv("data-raw/fish.csv")
fish %<>% arrange(Year) %>%
  mutate(
    Sex = case_when(
      Sex == "male" ~ "Male",
      Sex == "female" ~ "Female"
      ),
  )

fish_recent <- readxl::read_excel(
  "~/Poisson/Data/lar-ldr-rb/2024/Gerrard data for Evan 2024.xlsx",
  sheet = 2,
  skip = 2
) %>%
  suppressMessages() %>%
  filter(Year != "1949-59") %>%
  mutate(Year = as.integer(Year)) %>%
  filter(Year > 2021) %>%
  mutate(
    Year = as.integer(Year), Species = "RB", Length = Length * 10,
    `Weight(kg)` = if_else(`Weight(kg)` == "-", NA_character_, `Weight(kg)`),
    Weight = as.numeric(`Weight(kg)`), Sex = tolower(Sex),
    Sex = case_when(
      Sex == "m" ~ "Male",
      Sex == "f" ~ "Female",
      .default = NA_character_
    )) %>%
  select(Year, Species, Length, Weight, Sex, Source = `Project/Source`)


fish %<>% bind_rows(fish_recent) %>%
  arrange(Year, Month, Day)

usethis::use_data(fish, overwrite = TRUE)
