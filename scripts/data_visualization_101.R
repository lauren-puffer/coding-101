# Data Manipulation 
# Lauren Puffer
########################################


# Load packages
library(janitor)
library(tidyverse)
library(here)


# Load in the data
cookie_recipe_for_2 <- read.csv(here("data", "cookie_recipe_for_2.csv"))


# Load penguins
library(palmerpenguins)

# Load penguin data
data("penguins")

# Data wrangling
penguin_flip_bod <- penguins |>
  select(flipper_length_mm, body_mass_g) |>
  drop_na()

# Make some visuals
library(ggplot2)

# Make a scatter plot
penguin_flip_bod_graph <- ggplot(data = penguin_flip_bod, 
                                 aes(x = flipper_length_mm, 
                                     y = body_mass_g)) +
  geom_point()

# Call it
penguin_flip_bod_graph

