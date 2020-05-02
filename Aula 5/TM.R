# Instalar pacote TM
# Mineração de texto -> Nuvem de palavras
# Matriz de frequencia

install.packages("tm", dependencies = T)
library(tm)


#Fonte de textos disponiveis no pacote TM
getSources()

# Formatos
getReaders()

# VCorpus -> memoria
# Caminho, Enconding, Tipo de leitura de arquivos
corpus <- VCorpus(DirSource("GitHub/Curso-R-Coti/Arquivos_base/min_texto", encoding = "UTF-8"),
                  readerControl = list(reader = readPlain, language = "eng"))

inspect(corpus)

# inspecionar um grupo de arquivos
inspect(corpus[1:100])

# Metadados
meta(corpus[[1]])

# Metadados
meta(corpus[[2]])

# LInha do arquivo
as.character(corpus[[2]])[1]

# Geração da nuvem de palavras

## Remover as stopwords
stopwords("portuguese")
### Removendo
corpus <- tm_map(corpus, removeWords, stopwords("english"))

## Removendo espacos branco
corpus <- tm_map(corpus, stripWhitespace)

## Remover pontuação
corpus <- tm_map(corpus, removePunctuation)

## Remover numeros
corpus <- tm_map(corpus, removeNumbers)

# Criação da nuvem
install.packages("wordcloud", dependencies = T)
library(wordcloud)

corpus

wordcloud(corpus, max.words = 100, random.order = T,
          colors = rainbow(8), rot.per = 0.5,
          use.r.layout = T)

# Criar a matrix de termos de frequencia
freq <- TermDocumentMatrix(corpus)

# Transformar em um objeto do R
matriz <- as.matrix(freq)
matriz

# Ordenando a matriz de forma decrescente 
matriz <- sort(rowSums(matriz), decreasing = T)
matriz

dt_freq <- data.frame(word=names(matriz), freq=matriz)
dt_freq

View(dt_freq)
