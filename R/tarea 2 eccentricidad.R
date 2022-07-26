library(tidyverse)

eccentricity <- (mutate(iris,
       Petal.Eccentricity = sqrt(1 - Petal.Width / Petal.Length), 
       rank = rank(Petal.Eccentricity)))%>% [-1]

  slice_min(Petal.Eccentricity, n=5) 
