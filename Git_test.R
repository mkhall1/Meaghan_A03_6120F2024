library(tidyverse)
#install.packages("palmerpenguins")
library(palmerpenguins)

penguins %>%
  ggplot(aes(x = bill_depth_mm))+
  geom_histogram()

#Hi there!
