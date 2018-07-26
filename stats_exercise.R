library(tidyverse)
stats <- read_csv("edx_Question_status.csv")
#data = d %>% gather(key, value, -age_group)


head(stats)

tidy_data1 <- stats %>%
  separate(col = key, into = c('player', 'variable_name'), sep = '_', extra = 'merge') %>% 
  spread(key = variable_name, value = value)
dat <- left_join(tab1, tab2, by = 'state')

tidy_data2 <- stats %>%
  separate(col = key, into = c('player', 'variable_name1', 'variable_name2'), sep = '_', fill = 'right') %>% 
  unite(col = variable_name, variable_name1, variable_name2, sep = '_') %>% 
  spread(key = variable_name, value = value)
dat <- left_join(tab1, tab2, by = 'state')


tidy_data3 <- stats %>%
  separate(col = key, into = c('player', 'variable_name'), sep = '_') %>% 
  spread(key = variable_name, value = value)



tidy_data1
tidy_data2
tidy_data3

