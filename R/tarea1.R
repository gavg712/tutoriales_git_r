# install.packages("tidyverse")
# install.packages("remotes")
# install.packages("dbplyr")

library(tidyverse)

iris

class(iris)

ggplot(data = iris) +
  geom_histogram(mapping = aes(x = Petal.Length,
                               fill = Species,
                               color = Species)) +
  theme_minimal()+
  labs(x = "Longitud del petalo", 
       y = "Frecuencia",
       title = "Frecuencia de longitud del petalo por especie de Iris")+
  theme(plot.title = element_text(hjust=0.8),
        text = element_text(size = 16))





plot.new()          

                                 