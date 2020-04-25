#Aprendizado baseado em instância

#KNN -> Ele não cria um modelo de treino
# -> Classificação
install.packages("class", dependencies = T)
library(class)

#amostra para o conjunto iris
amostra <- sample(2, 150, replace = T, prob = c(0.7,0.3))
amostra

dim(iris)
head(iris)
levels(iris$Species)

irisTreino <- iris[amostra == 1,]
irisTeste <- iris[amostra == 2,]

# Treinamento baseado em instância
previsao <- knn(irisTreino[, 1:4], irisTeste[, 1:4], 
                irisTreino[, 5], k = 7)

previsao

#Matriz confusao
confusao <- table(irisTeste[, 5], previsao)

confusao

perc <-  sum(diag(confusao)) / sum(confusao) * 100
perc
