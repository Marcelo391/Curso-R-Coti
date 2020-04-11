#Amostra aleatoria simples
#Sample()


#
c <- sample(c(0,1), 100, replace = T, prob = c(0.5, 0.5) )

length(c[c ==1])
length(c[c ==0])

#Amostra - aleatoriedade
set.seed(2345)

sample(c(100), 2)

