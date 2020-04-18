#Outliers
#iris
iris


# vsualizar os outliers
boxplot(iris$Sepal.Width)


#remover da visualização
boxplot(iris$Sepal.Width, outline = F)

# Stats  -> exibir os outliers de uma coleção
boxplot.stats(iris$Sepal.Width)$out

#Pacote outliers
install.packages("outliers")
library(outliers)

#Superior
outlier(iris$Sepal.Width)

outlier(iris$Sepal.Width, opposite = T)

help("outlier")

