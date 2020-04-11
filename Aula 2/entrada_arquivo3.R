#Acesso a base de dados POSTGRESQL

install.packages('RPostgreSQL', dependencies = T)


library(RPostgreSQL)

#Conectando ao banco de dados
con <- dbConnect(PostgreSQL(), user = "postgres", password = "rde997", dbname = "aular")
con

#Listar todas as tabelas
dbListTables(con)


#consulta
rs <-  dbSendQuery(con, "Select * from produto order by preco asc")
rs

# fetch dos dados do cursor
df <- fetch(rs, n = -1)
df

dim(df)
head(df)

#Construtir a consulta a partir de um getQuery
produtos <- dbGetQuery(con, statement = "Select * from produto order by nome")
produtos
