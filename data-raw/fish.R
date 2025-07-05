library(dplyr)
library(magrittr)
library(readr)
library(devtools)

rm(list = ls())

remove <- data.frame(
       Length = c(4550, 3200, 2600, 2400, 1900, 1800, 1700, 1200),
       Weight = c(1.1, 3.2, 2.6, 2.4, 1.9, 1.8, 1.7, 1.2),
       remove = TRUE
       )

fish <- read_csv("data-raw/fish.csv")
fish %<>% arrange(Year) %>%
  mutate(
    Sex = case_when(
      Sex == "male" ~ "Male",
      Sex == "female" ~ "Female"
      ),
  )

fish_recent <- readxl::read_excel(
  "data-raw/Gerrard data for Evan 2024.xlsx",
  sheet = 2,
  skip = 2
) %>%
  suppressMessages() %>%
  filter(Year != "1949-59") %>%
  mutate(Year = as.integer(Year)) %>%
  filter(Year > 2017) %>%
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

fish_22 <- readxl::read_excel('data-raw/2022 Gerrard Fecundity Samples Weight.xlsx') %>%
  transmute(
    Year = 2022, Species = "RB", Length = `Fish length (mm)`,
    Weight = `Fish Weight (g)` / 1000, Fecundity = `Total eggs in skein`, Sex = "Female",
    Source = "2022 Gerrard Fecundity Samples"
    )

fish_25 <- readxl::read_excel(
  'data-raw/Gerrard Biodata Filtered 2025.xlsx'
) %>%
  filter(!(is.na(Length) & is.na(Weight))) %>%
  transmute(
    Year = 2025, Species, Length, Weight,
    Sex = case_when(
      tolower(Sex) == "m" ~ "Male",
      tolower(Sex) == "f" ~ "Female",
      .default = NA_character_
    ),
    Source = "Gerrard reductions program 2025",
    Weight = Weight / 1000
    )

fish %<>%
  bind_rows(fish_recent) %>%
  bind_rows(fish_25) %>%
  bind_rows(fish_22) %>%
  arrange(Year, Month, Day) %>%
  left_join(remove, by = c("Length", "Weight")) %>%
  filter(is.na(remove))

usethis::use_data(fish, overwrite = TRUE)
