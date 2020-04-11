#Distribuição de Poisson
# Em um intervalo de tempo


# x = 3
# média de acidentes = 2
#chances de acidentes

dpois(3, lambda = 2)


# x <= 3
ppois(3, lambda = 2)

# x > 3
ppois(3, lambda = 2, lower.tail = F)
