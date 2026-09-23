# Weekly Exercise 4

# Step 4. Check the name of the default branch

install.packages("usethis")
library(usethis)
git_default_branch()

# Step 6. Olympics data analysis
install.packages("tidyverse")
library(readr)
library(tidyverse)
library(ggplot2)

olympics <- read_csv("Olympics.csv")
glimpse(olympics)

# Creating total medals and adding it to the dataset
olympics <- olympics %>%
  mutate(total.medals = gold + silver + bronze)
head(olympics)









