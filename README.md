## 🌱 LabExp

O **LabExp** é um pacote, ainda em desenvolvimento, destinado às disciplinas de **Estatística Experimental** e **Planejamento e Análise de Experimentos**. Ele reúne funções desenvolvidas para ampliar os recursos disponíveis na comunidade **R**, oferecendo ferramentas adicionais para o planejamento, a análise e a interpretação de experimentos.

As funções são:

1)  **croqui.DIC** e **croqui.DBC**: aplicação em sorteio de tratamentos para experimentos instalados em DIC e DBC;
2) **graf.medias** e **graf.medias2**: confecciona gráficos das médias para uma variável e para várias resposta, permitindo visualizar o desvio padrão, erro padrão ou nenhum dos dois;
3) **graf.reg** e **graf.reg2**: confecciona gráficos de modelos polinomiais de regressão (nenhum, 1º e 2º graus) para ensaios fatoriais duplos com ou sem interação - não é aplicado em superfície de resposta;
4) **scheffe.test** e **scheffe.test2**: realiza o teste de Scheffé em experimentos com tratamentos em estrutura simples. Os dados podem vir do banco de dados utilizados na ANAVA ou somente com inserção direta das médias - muito útil no caso de exercícios em que se tem as médias e as informações da ANAVA.


## 🚀 Instalação

No **R**, execute os comandos abaixo.

### 1️⃣ Instale o pacote `remotes`

Caso ainda não o tenha instalado:

```r
install.packages("remotes",
                 repos = "https://cloud.r-project.org")
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
