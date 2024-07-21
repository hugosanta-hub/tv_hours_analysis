library(tidyverse)
library(here)

tv_hours_tab <- gss_cat %>% 
  filter (age < 30) %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours= mean(tvhours, na.rm= T))

write_csv(tv_hours_tab, here("tv_hours_table.csv"))
