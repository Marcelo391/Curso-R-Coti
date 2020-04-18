#Conjunto de dados instalado no R
#Correlação entre a velocidade do carro e distância até a parada

#Visualização do conjunto
fix(cars) 
View(cars)

#Entendendo o conjunto
help(cars)

head(cars)
dim(cars)

#verificar a correlação
cor(cars)


#modelo de regressão linear simples
modelo <- lm(speed ~ dist, data = cars)


modelo

interceptacao <- modelo$coefficients[1]
distancia <- modelo$coefficients[2]

plot(modelo)
plot(speed ~ dist, data = cars)
abline(modelo)

# Previsão para o número 22

## Utilizando a fórmula de Regressão Linear
modelo$coefficients[1] + (modelo$coefficients[2] * 22)

## Utilizando a função genérica de predição
predict(modelo, data.frame(dist= 22))



