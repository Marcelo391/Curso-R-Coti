#Amostra estratificada

install.packages("sampling")

library(sampling)


help(iris)

dim(iris)
head(iris)

summary(iris)

amostra <- strata(iris, c("Species"), size = c(25,25,25), 
                  method = "srswor")

summary(amostra)
help(strata)

# strata em um conjunto de características com tamanhos diferentes
infert
help(infert)

dim(infert)
summary(infert)

#100 observações
g1 <- round(12 / 248 * 100)
g2 <- round(120 / 248 * 100)
g3 <- round(116 / 248 * 100)

amostraInf <- strata(infert, c("education"), size = c(g1,g2,g3), method = "srswor" )

summary(amostraInf)
