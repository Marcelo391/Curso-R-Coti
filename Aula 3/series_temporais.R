#Series temporais
AirPassengers
help("AirPassengers")

start(AirPassengers)
end(AirPassengers)

plot(AirPassengers)


subst <- window(AirPassengers, start = c(1960, 1),
                end = c(1960, 12))

plot(subst)

#Decomposição da serie temporal
dec = decompose(AirPassengers)
dec

dec$trend
dec$seasonal
dec$random

plot(dec)

#Previsão com series temporais
#Extrapolação
#1949 -> 1960 -> x

#Média movel
#Media do ultimo ano
mean(subst)

#forecast
install.packages('forecast', dependencies = T)
library(forecast)

#Media moveis
mediam <- ma(AirPassengers, order = 12)
mediam

previsao <- forecast(mediam, h = 12)
previsao

plot(previsao)

#Arima
arima <- auto.arima(AirPassengers)
arima

previsao <- forecast(arima, h=24)
previsao

plot(previsao)
