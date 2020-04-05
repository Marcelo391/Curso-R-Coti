#VETORES

#AtribuiÃ§Ã£o

a = 10
c <- 10

a
c

#Pesquisa/Help sobre uma função
?c

#Criação de vetor
vetor <- c(1, 2, 3, 4, 5, 6)

#executar
vetor


#Vetor de caracteres
nomes <- c("Marcelo", "Sarah", "João")
nomes

#posição do vetor <- Primeira posição no R é sempre 1
nomes[1]
vetor[0] #<- NÃ£o existe

# Tamanho Vetor
length(vetor)
length(nomes)

#verificar se Ã© vetor
is.vector(nomes)

#Vetor numÃ©rico a partir de um intervalo
numeros <- 1:10
numeros

#FunÃ§Ã£o seq
numeros2 <- seq(0, 1, by = 0.1)
numeros2

#Vetores de tipos diferentes
c("a", numeros)

#OperaÃ§Ãµes matemÃ¡ticas com vetores
operacao <- seq(10, 40, by = 10)

operacao -3
operacao + 3
operacao * 3
operacao /3

round(operacao /3)

#Vetores de elementos repetidos
repetidos <-  rep(1,5)

repetidos2 <- rep(c(1,2), c(3,4))

#FunÃ§Ã£o paste() -> usada para vetores de caracteres
n <- c("Lucas", "Bia", "Ana")


paste(n, 1:3)
paste(n, "Oliveira")

paste("T", 1:3, sep="")
rep(paste("T", 1:3, sep=""), c(4,4,3))
