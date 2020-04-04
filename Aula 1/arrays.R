#ARRAY

ar1 <- array(1:24, dim = c(3,4,2))
ar1

ar1[ , , ]
ar1[ , ,1]
ar1[ , ,2]
ar1[1, , ]
ar1[1,1, ]
ar1[1,1,2]


#Ajuda
help(array)

#Titanic <- Arrays

Titanic #<- Base de Dados Exemplo

dim(Titanic)
dimnames(Titanic)

#Total de Pessoas
sum(Titanic)

#Somatório dos Sobreviventes
sum(Titanic[ , , , "Yes"])

#Sobreviventes da Tripulação
sum(Titanic["Crew" , , , "Yes"])
sum(Titanic[4 , , , 2])

#Quantidade de pessoas por Sexo
margin.table(Titanic, margin = 2)

#Quantidade de homens
margin.table(Titanic, margin = 2)[1]


#Quantidade de Crianças
sum(Titanic[ , , 1 , ])
#Quantidade de Crianças que sobreviveram
sum(Titanic[ , , 1 , 1])

#Quantidade de crianças que sobreviveram por Sexo
margin.table(Titanic[ , , 1 , 2], margin = 2)
margin.table(Titanic[ , , 1 , "Yes"], margin = 2)

#Crianças por Sexo
margin.table(Titanic, margin = c(2,4))

dimnames(Titanic)
#apply
apply(Titanic, 3, sum)


#Porcentagem de crianças que sobreviveram


#Porcentagem de Crianças que sobreviveram dividido pelo total de pessoas no navio
( sum(Titanic[ , , 1 , 2]) / sum(Titanic) ) * 100
#Porcentagem de Crianças que sobreviveram divido pelo total de pessoas vivas
(sum(Titanic[ , , 1 , 2]) / sum(Titanic[ , , , 2]) ) * 100

#Porcentagem de Crianças que sobreviveram divido pelo total de crianças
(sum(Titanic[ , , 1 , 2]) / sum(Titanic[ , , 1 , ]) ) * 100



