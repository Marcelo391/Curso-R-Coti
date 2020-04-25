
#Datasets para Regressão
install.packages("mlbench")
library(mlbench)

??mlbench

# Dataset 
data("BostonHousing")

dados <- BostonHousing

help("BostonHousing")

View(dados)
dim(dados)

amostra <- sample(2, 506, replace = T, prob = c(0.7,0.3))
amostra

train <- dados[amostra == 1,]
teste <- dados[amostra == 2,]

# Rpart -> arvore
#Class -> class -> classificação
#Class -> anova -> regressão
fit <- rpart(medv ~., data = train, method = "anova")

plot(fit)

text(fit, use.n = T, all = T, cex= 0.8)

#Regressão
prev <- predict(fit, newdata = teste)
prev

prev_r <- cbind(teste, prev)
View(prev_r)

prev_r$dif <- abs(prev_r$med - prev_r$prev)
View(prev_r)

min(prev_r$dif)
max(prev_r$dif)
mean(prev_r$dif)


#Tabela de accuracy
library(forecast)

accuracy(teste$medv, prev)
