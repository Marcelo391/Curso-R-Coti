#Treinamento Supervisionado 
#Classificação 
#Algoritomo -> Naive Bayes

# Arquivo Credito.csv
credito <- read.csv(file.choose(), sep= ',', header = T)

View(credito)

#Dividir o conjunto de dados em Treino e Teste
# Amostra -> Aleatoria simples
# Sample()
#70%, 30%
amostra <- sample(2, 1000, replace = T, prob = c(0.7, 0.3))
amostra


treino <-  credito[amostra == 1,]
teste <-  credito[amostra == 2,]

dim(credito)
dim(treino)
dim(teste)

install.packages("e1071", dependencies = T)
library(e1071)


#modelo preditivo
# naiveBayes()
modelo <- naiveBayes(class ~ ., treino)
modelo

#Treinamento do conjunto de teste
previsao <- predict(modelo, teste)
previsao

teste$class[1]
previsao[1]

teste$class[2]
previsao[2]

#Validação
# Matriz de confusão
confusao <-  table(teste$class, previsao)
confusao

#Percentual
perc <- (confusao[1] + confusao[4]) / sum(confusao)
perc

#Arquivo NovoCredit
novaInstancia <- read.csv(file.choose(), sep= ',', header = T)

dim(novaInstancia)

#Prediçao no novo cliente
novaInstancia$class <- predict(modelo, novaInstancia)
novaInstancia$class
