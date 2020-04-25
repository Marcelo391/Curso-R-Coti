#Arvore de decisão - Rpart
install.packages("rpart", dependencies = T)
library(rpart)

#Carregando o arquivo Credit.csv
credito <- read.csv(file.choose(), sep= ',', header = T)

View(credito)
dim(credito)
head(credito)


# Dividir conjunto de treino e teste
# 70% 30%

amostra <- sample(2, 1000, replace = T, prob = c(0.7,0.3))
amostra

train <- credito[amostra == 1,]
teste <- credito[amostra == 2,]

dim(train)
dim(teste)

#Modelo de classificação baseado em uma árvore de decisão

#Class -> class -> classificação
#Class -> anova -> regressão

arvore <- rpart(class ~ ., data = train, method = "class")
print(arvore)

# Plotando a arvore
plot(arvore)
text(arvore, use.n = T, all = T, cex = 0.8)

#Validando os dados do teste
previsao <- predict(arvore, newdata = teste)
previsao

dim(previsao)

prev_test <- cbind(teste, previsao)
View(prev_test)

prev_test['Resultado'] <- ifelse(prev_test$good >= 0.5, "good", "bad")
View(prev_test)


#Criando matriz de confusão

confusao <- table(prev_test$class, prev_test$Resultado)
confusao

acertos <- confusao['bad','bad'] + confusao['good','good'] 
erros <- confusao['bad','good'] + confusao['good','bad'] 

perc <- acertos / sum(confusao)
perc
