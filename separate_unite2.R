library(tidyverse)
d <- read_csv("edx_Question.csv")
#data = d %>% gather(key, value, -age_group)
# TROUBLE RUNING THIS CODE!

head(data)
#data$key[1:5]

tidy_data111 <- d %>%
  gather(key = 'key', value = 'value', -age_group) %>%
  separate(col = key, into = c('year', 'variable_name'), sep = '.') %>% 
  spread(key = variable_name, value = value)


tidy_data2 <- d %>%
  gather(key = 'key', value = 'value', -age_group) %>%
  separate(col = key, into = c('year', 'variable_name'), sep = '_') %>% 
  spread(key = variable_name, value = value)



tidy_data3 <- d %>%
  gather(key = 'key', value = 'value') %>%
  separate(col = key, into = c('year', 'variable_name'), sep = '_') %>% 
  spread(key = variable_name, value = value)



tidy_data4 <- d %>%
  gather(key = 'key', value = 'value', -age_group) %>%
  separate(col = key, into = 'year', sep = '_') %>% 
  spread(key = year, value = value)

tidy_data111
tidy_data2
tidy_data3
tidy_data4


# tiday_data2 would provide the best response
# This column gathers the column names 2015_time, 2015_participants, 
# 2016_time, and 2016_participants into one column called “key”, 
# with the values for each stored in the column “value.” 
# The key column is then separated into two columns, “year” and 
# “variable_name”. The two entries for “variable_name”, time and 
# participants, are then spread into their own columns.






