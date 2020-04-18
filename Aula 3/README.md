# Probabilidade

## Regressão Linear

Estuda a relação entre uma variável chamada de dependente e outras variáveis chamadas independentes.

>
> ### Modelo de Regressão Linear Simples
> Estuda a relação entre uma variável chamada de > dependente e uma variável independente.
> 
> Exemplo:
> - Altura dos pais e dos filhos.
> - Renda semanal e despesas de consumo.
> - Idade e custo ao plano de saúde.
> 
>

### Correlação

* Mostra a Força e Direção da relação entre as variáveis
* Pode ser um valor entre -1 e 1
* A correlação de A ~ B é a mesma que B ~ A 

##### A Correlação pode ser:

* Forte -> Os elementos estão mais próximos da linha de linearidade
* Fraca -> Os elementos estão dispersos, mais longe da linearidade
* Positiva -> Os elementos crescem ou diminuem no mesmo sentido
* Negativa -> Os elementos crescem em sentidos opostos
* Inexistente -> Linha reta

### Coeficiente de determinação

* Mostra o quanto o modelo consegue explicar os valores
* Quanto maior, mais explicativo é
* O restante da variabilidade está em variáveis não incluidas no modelo
* Varia entre 0 e 1
* Calcula-se com o quadrado do coeficiente de correlação
    * Ex: **Correlação** de 0.93 -> **Determinação** de 0.86

### Previsão de novo valor
~~~
**Previsão:** Intersecção + ( Inclinação * Valor_a_Prever )
~~~


## Regressão Logística

Semelhante a regressão linear porém a variável de resposta é binária: sucesso ou fracasso

1 -> Sucesso
0 -> Fracasso

**Ex:** Amostra aleatória de uma concessionária com 92 clientes. Estima se o cliente é adimplente ou inandimplente.

## Séries Temporais

Estuda o comportamento de uma variável continua ao longo do tempo.

* Intervalo regular de coleta de dados
* O intervalo deve ser sempre o mesmo
* Autocorrelação, dependência entre os intervalos
Ex: Dias, Horas, Semanas, Meses

### Áreas:
* Econometria
* Previsão do tempo
* Previsão Financeira

**Estacionaria** -> Flutuam em torno de uma mesma média
**Não Estacionaria** -> Contém mudanças mais acentuadas. Mudam os valores das médias e variâncias.


### Componentes:

- ***Tendência***
- ***Sazionalidade***
- ***Aleatoriedade***


# Machine Learning - Aprendizado de Máquina

### Limites do computador
* Limites Físicos -> Processamento
* Limites Lógicos -> Algoritmos

### Conjunto de Dados

* Atributos ou dimensões: Caracteísticas do fato
* Atributo Classe: Atributo especial, usado para prever algo
* Instancias: São as linhas que representam os eventos
* Relação: É o conjunto de dados todo

### Tipo de Dados

* Nominais -> Qualitativos
* Numéricos -> Quantitativos

### Tarefas

* Classificação -> Lógica
* Regressão -> Numérica
* Agrupamentos -> Agrupar por características matemática
* Regras de Associação -> Semelhança entre elementos

### Tipos

* Supervisionado: Quando possui uma classe
* Não Supervisionado: Quando não possui uma classe

### Tipos de Algoritmos
* Bayes
* Rules -> Classificação
* Por densidade
* Centróide -> Agrupamento
* Frequência
* Árvores de dados -> Regras de associação

----

## Aprendizado Supervisionado

### Tarefas
* Classificação -> Descreve ou prevê um atributo especial chamado classe
* Regressão -> Um tipo de classificação que prevê um valor numérico

## Tipos de Algoritmos

* Árvore de Decisão
* Regras
* Naive Bayes
* Redes Bayesianas
* Redes Neurais
* Máquina de vetor de suporte
* Métodos de grupos
* Aprendizado baseado em instância

