## code to prepare `initiation` dataset goes here

library(dplyr)

initiation_data <- RSocrata::read.socrata('https://datacatalog.cookcountyil.gov/resource/7mck-ehwz.csv')

initiation <- initiation_data %>%
  mutate(case_id = as.character(case_id),
         case_participant_id = as.character(case_participant_id),
         charge_id = as.character(charge_id),
         charge_version_id = as.character(charge_version_id)) %>%
  mutate_at(vars(event_date,
                 incident_begin_date,
                 incident_end_date,
                 arrest_date,
                 received_date,
                 arraignment_date), funs(lubridate::mdy_hms)) %>%
  filter(received_date >= lubridate::ymd_hms('2019-01-01 00:00:00'))

usethis::use_data(initiation)
