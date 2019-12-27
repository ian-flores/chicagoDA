## code to prepare `sentencing` dataset goes here

library(dplyr)
library(tidyr)

dispositions_data <- RSocrata::read.socrata('https://datacatalog.cookcountyil.gov/resource/apwk-dzx8.csv') %>%
  as_tibble()

dispositions <- dispositions_data %>%
  mutate(case_id = as.character(case_id),
         case_participant_id = as.character(case_participant_id),
         charge_id = as.character(charge_id),
         charge_version_id = as.character(charge_version_id),
         gender = as_factor(gender),
         race = as_factor(race),
         law_enforcement_agency = as_factor(law_enforcement_agency)) %>%
  mutate_at(vars(incident_begin_date,
                 incident_end_date,
                 arrest_date,
                 received_date,
                 arraignment_date), funs(lubridate::mdy_hms)) %>%
  filter(received_date >= lubridate::ymd_hms('2019-01-01 00:00:00'))

usethis::use_data(dispositions, overwrite = T, version = 3)
