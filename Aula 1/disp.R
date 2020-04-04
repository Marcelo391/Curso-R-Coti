#Dispersão
#Relação entre duas variáveis

plot(trees$Girth, trees$Volume, main="Árvores", xlab = "Circunferência", ylab = "Volume",
     col="blue", pch = 20)

#jitter -> tremulação
plot(jitter(trees$Girth, factor = 10), trees$Volume, main="Árvores", xlab = "Circunferência", ylab = "Volume",
     col="blue", pch = 20)


