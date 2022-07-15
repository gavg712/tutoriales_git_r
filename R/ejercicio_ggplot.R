
library(tidyverse)

data_media = group_by(iris, Species) %>%
  summarise(Sepal.Length=mean(Sepal.Length))

ggplot(data = iris) +
  aes(x = Sepal.Length, 
      fill = Species, 
      color = Species) +
  geom_histogram(alpha=0.5, color = NA)+
  geom_vline(data=data_media, mapping= aes(xintercept = Sepal.Length, color = Species)) +
  geom_point(data=data_media, mapping= aes(y = 0)) +
  #stat_summary(mapping=aes(xintercept=mean(Sepal.Length),color=Species))+
  labs(x = "Longitud del sépalo",
       y = "Frecuencia", 
       title = "Histrogramas de frecuencias por especie de Iris") + 
theme_bw() +
  theme(panel.grid = element_blank())
  #geom_density(mapping = aes(x=Sepal.Length, color=Species))
