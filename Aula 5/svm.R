# Seleção de atributos
# Treinamento SVM

#Conjunto credito.csv
credito <- read.csv(file.choose(), sep = ',', header=T)

View(credito)

#Dividir em dois conjuntos de Teste e Treino
amostra <- sample(2, 1000, replace = T, prob = c(0.7,0.3))
amostra

treino <- credito[amostra == 1,]
teste <- credito[amostra == 2,]

dim(treino)
dim(teste)

library(e1071)

#SVM -> Support Vector Machine
fit <- svm(class ~., treino)
fit

#Teste e validação
previsoes <- predict(fit, teste)
previsao

confusao <- table(teste$class, previsoes)
confusao

precisao1 <- (confusao[1] + confusao[4]) / sum(confusao)
precisao1

------------------------------------------------------------------------
Sys.setenv(JAVA_HOME='C:\\Program Files\\Java\\jre7') # for 64-bit version
Sys.setenv(JAVA_HOME='C:\\Program Files (x86)\\Java\\jre7') # for 32-bit version
library(rJava)
----------------------------------------------------------------------------------
  
install.packages('rJava', dependencies = T)
library(rJava)

#Seleção de Atributos
install.packages('FSelector', dependencies = T)
library(FSelector)

#Cadas método de seleção
# Diferente -> rank, relevancia, porcentagem
random.forest.importance(class ~., credito)

fit2 <- svm(class ~ checking_status + duration + purpose + credit_history, treino)
fit2

previsoes2 <- predict( fit2, teste)
previsoes2

confusao2 <- table(teste$class, previsoes2)
confusao2

precisao2 <- (confusao2[1] + confusao2[4]) / sum(confusao2)

precisao1
precisao2
