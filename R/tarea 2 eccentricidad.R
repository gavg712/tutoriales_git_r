library(tidyverse)

mutate(iris,
       Petal.Eccentricity = sqrt(1 - Petal.Width / Petal.Length), 
       rank = rank(Petal.Eccentricity)) %>% 
  
  slice_min(Petal.Eccentricity, n=5) 
  eccentricity %>% select(Species, Petal.Eccentricity, rank)

