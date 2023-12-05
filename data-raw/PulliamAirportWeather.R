library(tidyverse)

# Read in the data.  Do some cleaning/verification
PulliamAirportWeather <-
  read.csv('data-raw/Pulliam_Airport_Weather_Station.csv') %>%
  select('DATE', 'PRCP', 'SNOW', 'TMAX', 'TMIN') %>%
  rename_with(tolower) %>%
  drop_na() %>%
  mutate(across(2:5, as.numeric))

# Save the data frame to the data/ directory as PulliamAirportWeather.rda
usethis::use_data(PulliamAirportWeather, overwrite = TRUE)
