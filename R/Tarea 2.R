library(tidyverse)


mutate(iris, Petal.Eccentricity = sqrt (1- Petal.Width/Petal.Length)) %>% 
  slice_min(Petal.Eccentricity, n=5)


