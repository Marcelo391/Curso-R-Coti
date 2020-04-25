# SVM ->  Maquina de vetor de suporte [INCOMPLETO]
# e1071
install.packages("e1071", dependencies = T)
library(e1071)

#Carregando o arquivo Credit.csv
credito <- read.csv(file.choose(), sep= ',', header = T)

dim(credito)

#Amostra
amostra <- sample(2, 1000, replace = T, prob = c(0.7,0.3))
amostra


train <- credito[amostra == 1,]
teste <- credito[amostra == 2,]


#modelo de svm
modelo <- svm(class ~., train)
modelo

#Previsão
previsao <- predict(modelo, teste)
previsao

confusao <- table(teste$class, previsao)
confusao

perc <- (confusao[1] + confusao[4]) / sum(confusao)
perc


#Seleção de atributos
## Verificar e selecionar os atributos que melhor descreve o modelo

#FSELECTOR
install.packages("FSelector", dependencies = T)
library(FSelector)
