## 🌱 LabExp

O **LabExp** é um pacote, ainda em desenvolvimento, destinado às disciplinas de **Estatística Experimental** e **Planejamento e Análise de Experimentos**. Ele reúne funções desenvolvidas para ampliar os recursos disponíveis na comunidade **R**, oferecendo ferramentas adicionais para o planejamento, a análise e a interpretação de experimentos.

Algumas funções são:

1) sorteio de tratamentos para experimentos instalados em DIC e DBC
2) gráficos das médias - desvio padrão e erro padrão
3) gráfico de modelos de regressão para ensaios fatoriais duplos
4) teste de Scheffé


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

O **LabExp** tem como objetivo disponibilizar funções que auxiliem professores, estudantes e pesquisadores nas disciplinas de **Estatística Experimental** e **Planejamento e Análise de Experimentos**, complementando os recursos já disponíveis no ambiente **R**.

Bom estudo!
