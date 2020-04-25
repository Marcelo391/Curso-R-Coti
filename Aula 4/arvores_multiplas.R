#Ramdom Forest ->  Múltiplas arvores de decisão
install.packages("randomForest", dependencies = T)
library(randomForest)

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

floresta <- randomForest(class ~ ., data = train, ntree = 100, importance = T)

plot(floresta)

previsao <- predict(floresta, teste)
previsao

confusao <- table(previsao, teste$class)
confusao

prec <- (confusao[1] + confusao[4]) / sum(confusao)
prec
