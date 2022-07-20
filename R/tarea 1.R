library(tidyverse)

ggplot(data = iris) +
  aes(y = Petal.Width,
      x = Species,
      fill = Species, 
      color = Species) +
  geom_boxplot(alpha = 0.4) +
  geom_jitter(color="black", size = 0.4, alpha = 0.9) +
  theme_classic() +
  labs(x = "Especies",
       y="Ancho del Pétalo",
       title = "Diagrama Ancho del Pétalo ")

  
  #scale_fill_viridis(discrete = TRUE) +
  #geom_col (width=0.2) +
  #geom_bar(stat = "identity") 
  #scale_x_continuous(limits = c(0.1,3.1))
  #geom_vline(data = data_med, 
           #mapping = aes(xintercept= Petal.Width, color= Species)) +
  #geom_point(data= data_med, mapping = aes(y= 0)) 
