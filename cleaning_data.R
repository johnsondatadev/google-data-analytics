library("here")
library("skimr")
library("janitor")

library("tidyverse")
library("palmerpenguins")

skim_without_charts(penguins)

# Select all but the species column
penguins %>% 
  select(-species) # This can also be written as select(!species)
# To select just the species column, you can remove the ! or - sign before the word species

# To rename a column - In this case sex to gender
penguins %>% 
  rename(gender = sex)

# The rename_with transforms the case of the columns - In this case, the columns are transformed
# to all uppercase
penguins %>% 
  rename_with(toupper) # "tolower" is used to transform it to a lower case.

# clean_names() in Janitor ensures that column names are automatically unique and consistent
clean_names(penguins)

# Sort penguins in descending order
penguins %>% 
  arrange(-bill_length_mm)

# Summarize by island
penguins %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarize(mean_bill_length_mm = mean(bill_length_mm))

