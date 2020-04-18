# Estatística


## Amostra, Censo e Inferência

>  
> * Censo é mais preciso porém mais custoso.
> * Amostra é menos preciso porém menos custoso.
> * Conclusão tirada em cima de uma amostra.
>  

---

## AMOSTRA
 
 Amostra é o subconjunto da população.
 Parte de uma população, selecionada usando uma técnica


**É realmente necessário usar amostra ?**
As vezes conseguimos em uma proporção menos de dados efeitos iguais ou muito semelhantes sem precisar analisar todos os dados.

### Pincipais tipos de amostras

- **Aleatória Simples:** Chances iguais de serem escolhidos.
    - **Com reposição:** Ele volta para a lista de seleção.
    - **Sem reposição:** Ele não volta para a lista de seleção.  

- **Sistemática:** É escolhido um número aleatório e a partir dele é criado um intervalo para os demais elementos.

- **Estratificada:** População dividida em estratos ( características em comum ).
    - Ex: Escola ( ginásio e primário)
    - Ex: Cidade ( empregados e desempregados )
- **Por unidade monetária**


## Censo

Quando se pesquisa todos os indivíduos da população.
Nem sempre é possível efetuar um censo, porque o custo e o tempo para a coleta de dados e caro e demorado.

## Inferência

Conclusões tiradas a partir de uma amostra.
Apresenta uma margem de erro dentro da amostra.

## Enviesamento

Subestima ou superestima o parâmetro da população:
- Pesquisas sem uso de mecanismos aleatórios
- Seleção de um mesmo grupo intencionalmente
- Facilitar o acesso de um determinado grupo

Ex: Pesquisa na internet -> ( nem todo mundo tem acesso ). Pesquisa no seu bairro, escolha das pessoas que vão participar.

## Custo

Margem de erro e nível de confiança.



# Estatística no R

## Funções
~~~ r
    Sample() -> Amostra Aleatória Simples
    Strata() -> Amostra Estratificada
    S.SY() -> Amostra Sistemática
~~~
--- 
# Probabilidade

## Distribuição Binomial

Distribuição de probabilidade discreta.

- Número fixo de esérimentos
- Dois resultados: sucesso ou frcasso
- Probabilidades iguais
- Experimentos são independentes


### Funções no R

~~~ r
    dbinom() -> Distribuição Binomial
    pbinom() -> Probabilidade Cumulativa
~~~

## Distribuição Normal

Uma distribuição em que a media dos dados encontra-se no centro.

* 68% dos dados estão a um desvio padrão da média
* 27% dos dados estão a dois desvios padrão da média
* 4,2% dos dados estão a três desvios padrão da média
* 0,2% dos dados estão a quatro desvios padrão da média

Gráfico de frequância em formato de sino
A distribuição normal é simetricamente distribuida

### Função no R

~~~ r
    pnorm()
    dnorm()
    qnorm()
    rnorm()
~~~


