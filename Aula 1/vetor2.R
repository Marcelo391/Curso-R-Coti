#VETORES

# Vetor
estados <- c("RJ", "SP", "MG")

class(estados)
attributes(estados)

#Fator -> Objetos do R contém levels

estadosf <- factor(estados)
estadosf

class(estadosf)
attributes(estadof)

pessoas <- c("Rui", "Bia", "Ana", "Leo", "Nat", "Rui", "Leo", "Bia", "Leo")

table(pessoas)

pessoasf <- factor(pessoas)
pessoasn <- factor(pessoas, levels = c("Ana", "Rui", "Bia", "Nat", "Leo", "Bob"))

table(pessoasn)                   

#Reagrupar fatores
pessoassite <- pessoasn

levels(pessoassite)

levels(pessoassite) <- c("Site","Site","Site","Site", "App","App")

table(pessoassite)
table(pessoasn)

#Ordem inversa
vecNormal <-  1:10
rev(vecNormal)

vectinvertido <- 10:1

#Criação dinâmica
vec <- round(rnorm(7, m=10, sd = 10))

# Ordenar
sort(vec)

vec
#Rankeamento
rank(vec)

#witch -> posição do elemento que obedece um critério

which(vec > 15)

which.max(vec)
which.min(vec)

#Remover elementos
vec[-5]
vec[-(2:3)]

vec
