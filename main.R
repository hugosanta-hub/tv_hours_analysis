library(tidyverse)
library(here)

tv_hours_tabl <- gss_cat %>% 
  filter (age < 30) %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours= mean(tvhours, na.rm= T))

write_csv(tv_hours_tabl, here("tv_hours_table.csv"))
