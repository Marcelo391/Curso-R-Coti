# Agrupamento Total -> Kmeans
# Media
# Conjunto de dados -> iris -> 150 instancias, 5 colunas 3 classes
# Classes -> setosa, versicolor, virginica

dimNames(iris)
#Atributos -> 1 a 4
#center -> numero de grupos
cluster <- kmeans(iris[1:4], centers = 3)
cluster

#
cluster$cluster
table(iris$Species, cluster$cluster)

plot(iris[, 1:4], col = cluster$cluster)
