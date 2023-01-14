install.packages("Tmisc")
library("here")
library("skimr")
library("janitor")

library("tidyverse")
library("palmerpenguins")
library("Tmisc")

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

# Practice separate and unite
id <- c(1:5)
name <- c('John Don', "Jacky Tracy", "Brian Bobby", "James Bonded", "McPherson Bright")
occupation <- c('Professor', "Reader", "Accountant", "Data Scientist", "Musician")

people <- data.frame(id, name, occupation)

people

people_expanded = separate(people, name, into = c("first_name", "last_name"), sep = " ")

unite(people_expanded, 'name', c(first_name, last_name), sep = ' ')

unite(people_expanded, 'name', first_name, last_name, sep = ' ')


# Quartet data
data("quartet")
View(quartet)


# install.packages("datasauRus")
library("datasauRus")


ggplot(datasaurus_dozen, aes(x = x, y = y, colour = dataset)) +
  geom_point() + 
  theme_void() +
  theme(legend.position = 'none') +
  facet_wrap(~dataset)
