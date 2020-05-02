# Regras de associações
# Pacote arules
library(arules)

#arqvuivo cursos.txt
transacoes <- read.transactions(file.choose(), sep= ',', format = 'basket')

#inspect
arules::inspect(transacoes)
image(transacoes)


regras <- eclat( transacoes, parameter = list(supp= 0.1, maxlen = 15))
arules::inspect(regras)

# Criação das regras com confiança

rules <- ruleInduction(regras, transacoes, confidence = 0.2)
rules

inspect(rules)  

library(arulesViz)
plot(regras, method="graph", control = list(alpha = 1, 0, arroSize = 1.0))

                     
