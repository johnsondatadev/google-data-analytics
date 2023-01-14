library(tidyverse)

install.packages('SimDesign')


library("SimDesign")
?SimFunctions

actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)

predicted_temp <- c(67.9, 69, 71.5, 70, 67, 69)

bias(actual_temp, predicted_temp)
