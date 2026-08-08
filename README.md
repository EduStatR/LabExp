## 🌱 LabExp

O **LabExp** é um pacote, ainda em desenvolvimento, destinado às disciplinas de **Estatística Experimental** e **Planejamento e Análise de Experimentos**. Ele reúne funções desenvolvidas para ampliar os recursos disponíveis na comunidade **R**, oferecendo ferramentas adicionais para o planejamento, a análise e a interpretação de experimentos.

As funções são:

1) sorteio de tratamentos para experimentos instalados em DIC e DBC: **croqui.DIC** e **croqui.DBC**;
2) gráficos das médias para uma variável e para várias resposta - desvio padrão e erro padrão: **graf.medias** e **graf.medias2**;
3) gráfico de modelos polinomiais de regressão (nenhum, 1º e 2º graus) para ensaios fatoriais duplos com ou sem interação: **graf.reg** e **graf.reg**;
4) teste de Scheffé para tratamentos em estrutura simples com banco de dados ou somente com inserção direta das médias: **scheffe.test** e **scheffe.test2**.


## 🚀 Instalação

No **R**, execute os comandos abaixo.

### 1️⃣ Instale o pacote `remotes`

Caso ainda não o tenha instalado:

```r
install.packages("remotes")
```

### 2️⃣ Instale o pacote **LabExp** diretamente do GitHub

```r
remotes::install_github("EduStatR/LabExp")
```

### 3️⃣ Carregue o pacote

```r
library(LabExp)
```

Também é possível utilizar:

```r
require(LabExp)
```

### 4️⃣ Consulte a documentação

Para visualizar todas as funções disponíveis:

```r
help(package = "LabExp")
```

Para acessar a ajuda de uma função específica, utilize:

```r
?croqui.DIC
```

ou

```r
help(croqui.DIC)
```

---

## 📚 Objetivo

O **LabExp** tem como objetivo disponibilizar funções que auxiliem professores, estudantes e pesquisadores nas disciplinas de **Estatística Experimental** e **Planejamento e Análise de Experimentos**, ou até mesmo, na análise de experimentos, complementando os recursos já disponíveis no ambiente **R**.

Bom proveito!
