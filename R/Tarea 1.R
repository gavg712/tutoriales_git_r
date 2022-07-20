iris 
library(tidyverse)

ggplot(data=iris)+geom_histogram( mapping = aes(x=Petal.Width, fill=Species))+
  theme_classic()+ labs(x="Ancho del Pétalo", y= "Frecuencia", title= "Histograma de frecuencia
                       de Ancho de Pétalo por especie de iris")+
                              theme(plot.title=element_text(hjust=0.7))+theme(text = element_text(size=17))

     


