#Probabilidade
#Distribuição Binomial

#dbinom()
#x, número de eventos aguardados
#size, número de eventos
#probabilidade

#Lançar a moeda 5 vezes e aguardo 3 caras
dbinom(3, 5, 0.5)


# Exemplo de um sinal de 4 tempos
# 4 sinais

# nenhum aberto
dbinom(0, 4, 0.25)

# 1 sinal aberto
dbinom(1, 4, 0.25)

# 2 sinais aberto
dbinom(2, 4, 0.25)

# 3 sinais aberto
dbinom(3, 4, 0.25)

# 4 sinais aberto
dbinom(4, 4, 0.25)


# Probabilidade Cumulativa
pbinom(0, 4, 0.25)
pbinom(1, 4, 0.25)
pbinom(2, 4, 0.25)
pbinom(3, 4, 0.25)
pbinom(4, 4, 0.25)


#Prova 12 questões
# 4 opções
# 7 acertos

dbinom(7, 12, 0.25)
