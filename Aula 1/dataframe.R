#DATAFRAME

d1 <- data.frame(X = 1:10, Y = c(20, 30, 40, 56, 68, 77, 80, 83, 90, 34))
d1

d1$X
d1$Y

plot(d1)
plot(d1$X, d1$Y)


#Carregando dataframes do R

iris
help(iris)

dim(iris)
dimnames(iris)

#Primeiros registros
head(iris)
head(iris,10)

#Últimos registros
tail(iris)
tail(iris,10)

#Outras formas de visualização
View(iris)
fix(iris)

