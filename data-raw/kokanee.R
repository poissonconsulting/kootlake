library(dplyr)
library(magrittr)
library(readr)
library(usethis)

rm(list = ls())

kokanee <- read_csv("data-raw/kokanee.csv")

kokanee %<>% arrange(Year) %>%
  select(Year, Lardeau, MeadowCreek, Fecundity, LengthMale = ForkLengthMale,
         LengthFemale = ForkLengthFemale) %>%
  mutate(Year = as.integer(Year), Lardeau = as.integer(Lardeau), MeadowCreek = as.integer(MeadowCreek),
         Fecundity = as.integer(Fecundity), LengthMale = as.integer(LengthMale),
         LengthFemale = as.integer(LengthFemale))

usethis::use_data(kokanee, overwrite = TRUE)
