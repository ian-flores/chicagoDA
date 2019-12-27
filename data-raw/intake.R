## code to prepare `intake` dataset goes here
library(dplyr)
library(forcats)
library(tidyr)

intake_data <- RSocrata::read.socrata('https://datacatalog.cookcountyil.gov/resource/3k7z-hchi.csv') %>%
  as_tibble()

intake <- intake_data %>%
  mutate(case_id = as.character(case_id),
         case_participant_id = as.character(case_participant_id),
         offense_category = as_factor(offense_category),
         participant_status = as_factor(participant_status),
         gender = as_factor(gender),
         race = as_factor(race),
         law_enforcement_agency = as_factor(law_enforcement_agency)) %>%
  filter(received_date >= lubridate::ymd_hms('2019-01-01 00:00:00'))

usethis::use_data(intake, overwrite = T, version = 3)
