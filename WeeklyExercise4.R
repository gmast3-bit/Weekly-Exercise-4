# Weekly Exercise 4

# Step 4. Check the name of the default branch

install.packages("usethis")
library(usethis)
git_default_branch()

# Step 7
library(readr)
library(tidyverse)
library(ggplot2)

# a. Countries with largest athletes delegations in 1992
delegations_1992 <- olympics %>%
  filter(year == 1992) %>%
  select( country, athletes) %>%
  filter(athletes > 0) %>%
  arrange(desc(athletes))
delegations_1992


