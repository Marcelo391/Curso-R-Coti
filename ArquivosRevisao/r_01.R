getwd()
setwd("~/GitHub/Curso-R-Coti/ArquivosRevisao")
getwd()

dataset <- read.csv("Vendas.csv")
View(dataset)
str(dataset)

plot(dataset$Valor)
plot(dataset$Valor,dataset$Custo)

install.packages("ggplot2")
library(ggplot2)

qplot(Valor, Custo, data = dataset, geom = "point")
