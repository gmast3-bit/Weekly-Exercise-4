# Weekly Exercise 4

# Step 4. Check the name of the default branch

install.packages("usethis")
library(usethis)
git_default_branch()

# Step 5. Create a new branch DEV
install.packages("gert")
library(gert)

git_branch_create("DEV")
