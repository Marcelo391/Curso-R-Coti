#Distribui��o normal
#calculo de probabilidade


#Probabilidade de encontrar um objeto menor que 6kg
#media = 8, dp = 2

pnorm(6, 8, 2)


#Probabilidade de encontrar um objeto maior que 6kg
#Op��o1
1 - pnorm(10, 8, 2)
#Op��o2
pnorm(10, 8, 2, lower.tail = F)


#Encontrar um objeto que seja menor que 10 e maior que 8
pnorm(10, 8, 2) - pnorm(8, 8, 2)

