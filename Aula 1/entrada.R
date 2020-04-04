
ex1 <- read.table('GitHub/Curso-R-Coti/Arquivos_base/teste.txt')
ex1


ex2 <- read.table('GitHub/Curso-R-Coti/Arquivos_base/teste2.txt', head = T)
ex2


ex3 <- read.table('GitHub/Curso-R-Coti/Arquivos_base/teste3.csv', head=T, sep=';', dec = ',')
ex3

#Carregando dados xlsx e xls

install.packages('gdata', dependencies=T)
install.packages('gtools', dependencies=T)
library(gdata)

nomeArquivo <- 'GitHub/Curso-R-Coti/Arquivos_base/teste4.xlsx'

#Analisando o arquivo xl com as planilhas
sheetCount(nomeArquivo)
sheetNames(nomeArquivo)

clientes <- read.xls(nomeArquivo, verbose = T, perl = 'C:\\Perl64\\bin\\perl.exe', sheet = 1)
produtos <- read.xls(nomeArquivo, verbose = T, perl = 'C:\\Perl64\\bin\\perl.exe', sheet = "produtos")
enderecos <- read.xls(nomeArquivo, verbose = T, perl = 'C:\\Perl64\\bin\\perl.exe', sheet = 3)


clientes


