# Agrupamento Parcial -> Cmeans
#pertence a mais de um grupo

library(e1071)

cluster <- cmeans(iris[,1:4], center = 3)
cluster

table(iris$Species, cluster$cluster)

