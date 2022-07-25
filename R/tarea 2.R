library(tidyverse)

df <- iris
df<-mutate(df, 
       Petal.Eccentricity = sqrt(1 - Petal.Width/Petal.Length))
df_uno<-select(df, Species, Petal.Eccentricity)

df_uno %>%
  slice_min(Petal.Eccentricity, 
            n = 5)   
  
