# Regras de Associação
# Transações
# arules
install.packages("arules")
library(arules)

transacoes <- read.transactions(file.choose(), format = "basket", sep = ',')

inspect(transacoes)

image(transacoes)

regras <- apriori(transacoes, parameter = list(sup = 0.2, conf = 0.2))

regras
summary(regras)

inspect(regras)

#arulesViz
install.packages("arulesViz", dependencies = T)
library(arulesViz)
     
plot(regras, method='graph', control = list(type="items"))
