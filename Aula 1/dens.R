
#Dataframe trees
help(trees)

View(trees)

densidade <- density(trees$Height)

densidade
plot(densidade)
plot(densidade, main = "Gráfico de densidade", xlab = "Altura", ylab = "Densidade")
