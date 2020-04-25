# Kmedoids -> Agrupamento
install.packages("cluster", dependencies = T)
library(cluster)

# Escolhe um elemento como ponto médio do grupo
c <- pam(iris[, 1:4], k = 3)
c

plot(c)

table(iris$Species, c$clustering)
