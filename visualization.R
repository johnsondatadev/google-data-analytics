library("tidyverse")
library(palmerpenguins)

# Basic Chart
ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))


# Scatter, Jitter, and Line Plot
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point(aes(color = species)) +
  geom_jitter(aes(linetype = species)) + 
  geom_smooth(aes(linetype = species))

ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_jitter(aes(linetype = species))


# Bar charts
ggplot(data = diamonds,
       mapping = aes(x = cut)) +
  geom_bar(aes(fill = cut), color = "black")

# Stacked bar
ggplot(data = diamonds,
       mapping = aes(x = cut)) +
  geom_bar(aes(fill = clarity))


# Facet Wrap for single variables
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point(aes(color = species)) +
  facet_wrap(~species)


# Facet grid for two variables
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point(aes(color = species)) +
  facet_wrap(sex~species)


# Adding titles
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) + 
  geom_point(aes(color = species)) +
  labs(
    title = "Palmer Penguins: Body Mass vs Flipper Length",
    subtitle = "Sample of three Penguin Species",
    caption = "Data collected by Dr. Kristen Gorman"
  ) +
  annotate("text", 
           x = 190, 
           y = 5500, 
           label = "The Gentoos are the largest",
           color = "purple",
           fontface = "bold",
           size = 4.5,
           angle = 25)
