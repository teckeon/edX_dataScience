library(tidyverse)
tab1 <- read_csv("tab1.csv")
tab2 <- read_csv("tab2.csv")



dim(tab1)
dim(tab2)

dat <- left_join(tab1, tab2, by = 'state')
dim(dat)

dat <- right_join(tab1, tab2, by = 'state')
dim(dat)
dat <- full_join(tab1, tab2, by = 'state')
dim(dat)
dat <- inner_join(tab1, tab2, by = 'state')
dim(dat)
dat <- semi_join(tab1, tab2, by = 'state') 
dim(dat)


