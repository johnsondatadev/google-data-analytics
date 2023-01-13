data("ToothGrowth")
library(dplyr)
library(lubridate)

filtered_tg <- ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len, na.rm = T), .group = "drop") %>% 
  View()

mdy("April 10, 2019")
