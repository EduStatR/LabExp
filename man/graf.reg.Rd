\name{graf.reg}
\alias{graf.reg}
\title{
Grafico da regressao na ANAVA
}
\description{
Gera o grafico do modelo de regressao adotado considerando nenhum modelo, o modelo polinomial de grau 1 (linear) e o de grau 2 (quadratico). Esta funcao pode ser adotada tanto para tratamentos em estrutura simples, quanto para ensaios fatoriais sem interação - nesse caso declara o fator de interesse.
}
\usage{
graf.reg(dados,
         trat,
         resp,
         grau = NULL,
         xlab = NULL,
         ylab = "Média")
}

\arguments{
  \item{dados}{nome que identifica o banco de dados no programa R}
  \item{trat}{nome da variavel ou da coluna do banco de dados que identifica os tratamentos (ou o fator)}
  \item{resp}{nome da variavel ou da coluna do banco de dados que identifica a variavel resposta}
  \item{grau}{grau do modelo polinomial ajustado, o \emph{default} e NULL, mas pode-se usar 1 para o modelo linear ou 2 para o modelo quadratico}
  \item{xlab}{permite nomear a variavel apresentada no eixo horizontal}
  \item{ylab}{permite nomear a variavel apresentada no eixo vertical, o \emph{default} e Media}
}
\details{
Permite obter o grafico com os valores medios observados e, quando declarar, a curva do modelo ajustado
}
\value{Retorna o grafico com os valores medios observados e, quando declarar, a curva do modelo ajustado
}
\references{


STORCK, L.; GARCIA, D. C.; LOPES, S. J.; ESTEFANEL, V. Experimentação vegetal. 2. ed. Santa Maria: Editora da UFSM, 2006. 198 p.
}
\author{
Adriana Dias,
\email{adriana.dias@unifal-mg.edu.br}

Denismar Alves Nogueira,
\email{denismar.nogueira@unifal-mg.edu.br}

Flavio Bittencourt,
\email{flavio.bittencourt@unifal-mg.edu.br}

Natalia da Silva Martins Fonseca,
\email{natalia.martins@unifal-mg.edu.br}


}

\note{
Esta funcao pode ser utilizada para gerar grafico polinomial (nenhum, linear ou quadratico)
de experimentos com tratamentos em estrutura simples ou em estrutura fatorial
sem interacao. No último caso, declara-se o fator em \emph{trat}
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
 \code{\link{graf.reg2}}
}
\examples{
data(exp3)
attach(exp3)

graf.reg(exp3,trat=tempo,resp=ufc,grau = NULL,
         xlab = "Tempo",ylab = "Média")

graf.reg(exp3,trat=tempo,resp=ufc,grau = 1,
         xlab = "Tempo",ylab = "Média")

graf.reg(exp3,trat=tempo,resp=ufc,grau = 2,
         xlab = "Tempo",ylab = "Média")

#==========================================
#==========================================
data(exp4)
attach(exp4)
graf.reg(exp4,trat=B,resp=UFC,
         grau = 2,
         xlab = NULL,
         ylab = "Média")

graf.reg(exp4,trat=B,resp=UFC,
         grau = 1,
         xlab = NULL,
         ylab = "Média")

graf.reg(exp4,trat=B,resp=UFC,
         grau = NULL,
         xlab = NULL,
         ylab = "Média")






}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
