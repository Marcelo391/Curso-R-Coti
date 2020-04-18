#Regressão multipla

#mtcars
help(mtcars)

dim(mtcars)
head(mtcars)


cor(mtcars[1:4])

#modelo de regressão linear multipla
modelo <- lm(mpg ~ disp + hp + cyl, data = mtcars)

modelo

#coeficiênte de determinação para regressão simples
summary(modelo)$r.squared

#coeficiênte de determinação para regressão múltipla
summary(modelo)$adj.r.squared


# Previsão mpg
predict(modelo, data.frame(disp = 200, hp = 100, cyl = 4))
