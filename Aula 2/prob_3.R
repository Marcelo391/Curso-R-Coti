# Criar um distribuição normal
x <- rnorm(100)
x

qqnorm(x)

shapiro <- shapiro.test(x)

p <- shapiro$p.value


if(p > 0.05){
  print("Seguem uma distribuição normal")
}else{
  print("Dados não seguem uma distribuição normal")
}