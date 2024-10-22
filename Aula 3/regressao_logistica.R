#Regress�o Log�stica

#conjunto de dados -> candidatos -> Ler arquivo Eleicao.csv
eleicao <- read.csv(file.choose(), sep = ';', header = T)

View(eleicao)


plot(eleicao$DESPESAS, eleicao$SITUACAO)
#De acordo com o valor investido eu preciso saber se um candidato ser� eleito ou n�o (situa��o 0 ou 1)

summary(eleicao)

#correla��o
cor(eleicao$SITUACAO, eleicao$DESPESAS)

# modelo de regress�o log�stica
modelo <- glm(SITUACAO ~ DESPESAS, data = eleicao, family = 'binomial')
modelo

plot(eleicao$DESPESAS, eleicao$SITUACAO, col = 'red', pch = 20)
points(eleicao$DESPESAS, modelo$fitted.values, pch = 4)

# Previs�o  dos novos candidatos -> Ler arquivo NovosCandidatos.csv
peleicao <- read.csv(file.choose(), sep = ';', header = T)
peleicao

peleicao$RESULT <- predict(modelo, newdata = peleicao, type = "response")
View(peleicao)

peleicao$SITUACAO <- (peleicao$RESULT * 100 > 50)
View(peleicao)

peleicao$SITUACAO <- ifelse(peleicao$SITUACAO  == T, 1, 0)
View(peleicao)


peleicao$RESULT = NULL


#Escrever no arquivo o resultado
write.csv2(peleicao, file = "GitHub/Curso-R-Coti/Arquivos_base/NovosCandidatosResult.csv", sep = ";")



     