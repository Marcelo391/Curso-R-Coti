#MATRIZ

#Criação de Mariz
m1 <- matrix(1:6, nc=3)
m1

m2 <- matrix(10*1:6, nc=3)
m2

#Operações com matrizes

m1+m2
m1-m2
m1*m2
m1/m2

#Transposta
t(m1)

#Tamanho
length(m1)

#dimensão
dim(m1)

#linhas
nrow(m1)

#colunas
ncol(m1)

#elementos e posições
m1[1,2] #linha, coluna

#elementos da linha 2
m1[2,]

#elementos da coluna 3
m1[,3]

#Ordem de criação da matriz
m1 <- matrix(1:12, ncol = 3, byrow = T)
m1

#Nomes das dimensões
dim(m1)

dimnames(m1)
dimnames(m1) <- list(c("L1","L2","L3","L4"), c("C1","C2","C3"))

m1

m1["L1",]
m1[,"C2"]
m1["L4","C3"]
m1[c("L1","L2"),]

#Combinando linhas
#Criação de matriz

m2 <- cbind(1:5, 6:10)
m2

m3 <- cbind(v1 = 1:5, v2 = 6:10)
m3

#Função de tabelas
#Soma -> margin -> linhas e colunas
margin.table(m1, margin = 1)
margin.table(m1, margin = 2)


#Apply mesmo resultado do margin
apply(m1, 1, sum)
apply(m1, 2, sum)

apply(m1, 1, mean)
apply(m1, 1, median)
apply(m1, 1, min)
apply(m1, 1, max)
apply(m1, 1, avg)

sum(m1)
colSums(m1)

