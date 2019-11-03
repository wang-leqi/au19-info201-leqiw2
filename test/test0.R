# Load packages
library("dplyr")
library("ggmap")
library("ggplot2")

# Load data from GitHub
permit_data <- read.csv(
  "https://raw.githubusercontent.com/programming-for-data-science/in-action/master/interactive-vis/data/Building_Permits.csv", 
  stringsAsFactors = F)

# Formatting and filtering data
samp <- permit_data %>% 
  filter(!is.na(Longitude), !is.na(Latitude), Longitude <0, Latitude < 100) %>%
  filter(PermitTypeDesc == "New") %>% 
  mutate(year = as.numeric(substr(IssuedDate, 1, 4))) %>% 
  filter(year > 2010)

qmplot(
  data = samp, 
  x = Longitude, 
  y = Latitude, 
  color = as.character(year)
) + scale_color_discrete() +
  labs(color = "Year") 