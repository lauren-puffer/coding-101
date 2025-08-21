# Coding 101
# Lauren Puffer
# August 21st 2025
###############################################################

# Load packages
library(tidyverse)
library(janitor)
library(here)


## Creating vectors

# Start silly
fish <- 2+2

# Cookie ingredients
cookie_ingredients <- c("flour", "eggs", "baking_soda", "sugar", "brown_sugar", 
                           "vanilla_extract", "baking_powder","salt", 
                           "salted_butter", "chocolate_chips")

# How much of each?
cookie_measurements <- c(1,2,3,4,5,6,7,8,9,10)





## Data types
is.character(cookie_ingredients)

# If it isn't
as.factor(cookie_ingredients)

# Try with other column
is.numeric(cookie_measurements)





## Creating a dataframe
cookie_recipe <- data.frame(ingredients = cookie_ingredients, 
                            measurements = cookie_measurements,
                            stringsAsFactors = FALSE)

# Vertical are 'variables'
# Horizontal are 'observations'



## Data manipulation

# Cooking for 2?
cookie_recipe_for_2 <- cookie_recipe |>
  mutate(measurements = measurements*2)



# Save the dataframe
write.csv(cookie_recipe_for_2, here("data", "cookie_recipe_for_2.csv"))




