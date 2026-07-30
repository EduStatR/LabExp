\name{graf.reg2}
\alias{graf.reg2}
\title{
Grafico da regressao na ANAVA - fatorial duplo com interacao
}
\description{
Gera o grafico do modelo de regressao quando o ensaio fatorial duplo possui interacao significativa.
As opcoes sao nenhum modelo, o modelo polinomial de grau 1 (linear) e o de grau 2 (quadratico).}
\usage{
graf.reg2(dados,
          desd,
          dentro,
          nivel,
          resp,
          grau = NULL,
          xlab = NULL,
          ylab = "Média")
}

\arguments{
   \item{dados}{nome que identifica o banco de dados no programa R}
   \item{desd}{nome da variavel ou da coluna do banco de dados que identifica o fator que sera desdobrado}
   \item{dentro}{nome da variavel ou da coluna do banco de dados que identifica o fator que sera mantido fixo}
   \item{nivel}{identificacao do nivel que sera mantido fixo}
   \item{resp}{nome da variavel ou da coluna do banco de dados que identifica a variavel resposta}
   \item{grau}{grau do modelo polinomial ajustado, o \emph{default} e NULL, mas pode-se usar 1 para o modelo linear ou 2 para o modelo quadrático}
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
Esta funcao pode ser utilizada quando ha o desdobramento dos niveis de um fator dentro de um nivel do outro fator.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{graf.reg}}
}
\examples{
data(exp4)
attach(exp4)

graf.reg2(exp4,
          desd = B,
          dentro = A,
          nivel = 2,
          resp=UFC,
          grau = 2,
          xlab = NULL,
          ylab = "Média")
#================================================
#================================================
data(exp3)
attach(exp3)

graf.reg2(exp3,
          desd = tempo,
          dentro = prod,
          nivel = 3,
          resp=ufc,
          grau = 2,
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
