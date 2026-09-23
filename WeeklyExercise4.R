# Weekly Exercise 4

# Step 4. Check the name of the default branch

install.packages("usethis")
library(usethis)
git_default_branch()


# Step 6. Olympics data analysis
install.packages("tidyverse")

olympics <- read_csv("Olympics.csv")
glimpse(olympics)

# Creating total medals and adding it to the dataset
olympics <- olympics %>%
  mutate(total.medals = gold + silver + bronze)
head(olympics)

# Total gold medals won by each country
gold_by_country <- olympics %>%
  group_by(country) %>%
  summarise(total_gold = sum(gold, na.rm = TRUE)) %>%
  filter(total_gold > 0) %>%
  arrange(desc(total_gold))
print(gold_by_country, n = Inf)

# Total medals given out each year
medals_by_year <- olympics %>%
  group_by(year) %>%
  summarise(total.medals = sum(total.medals, na.rm = TRUE))
print(medals_by_year, n = Inf)


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

# b. Gold medals over time for 5 countries
five_countries <- c("United States", "France", "Germany", "Russia", "China")

gold_five <- olympics %>%
  filter(country %in% five_countries)

ggplot(gold_five, aes(x = year, y= gold, color = country)) +
  geom_line() +
  geom_point() +
  labs(title = "Gold medals won over time",
       x = "Year",
       y = "Number of gold medals",
       color = "Country")



