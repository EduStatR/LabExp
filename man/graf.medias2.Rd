\name{graf.medias2}
\alias{graf.medias2}

\title{
Grafico das medias com o resultado do teste de medias

}
\description{
Apresenta o grafico das medias de experimentos com tratamentos em
estrutura simples com o resultado do teste de comparacao de medias
}
\usage{
graf.medias2(dados,
             trat,
             resp,
             result = NULL,
             result.type = 1,
             col = "gray70",
             ylab = "Média",
             xlab = NULL)
}

\arguments{
  \item{dados}{nome da identificacao do banco de dados dentro do programa R}
  \item{trat}{nome da variavel ou da coluna do banco de dados que identifica os tratamentos}
  \item{resp}{nome da variavel ou da coluna do banco de dados que identifica a variavel resposta}
  \item{result}{vetor contendo a classificacao do teste de medias dos tratamentos, veja \strong{Note} para maiores detalhes}
  \item{result.type}{apresenta os seguintes rotulos no grafico (quando result nao for NULL), se: 1, apresenta as medias e a classificacao das medias; 2, a classificacao das medias e 3, as medias}
  \item{col}{definicao da cor do grafico}
  \item{ylab}{nome atribuido ao eixo vertical, o \emph{default} e Media}
  \item{xlab}{nome atribuido ao eixo horizontal }
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
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
\note{No argumento \emph{result}:
\itemize{
\item O resultado do teste de medias deve ser inserido no vetor de acordo com a ordem numerica ou alfabetica dos tratamentos.
\item As letras do resultado do teste devem ser digitadas entre aspas e separadas por virgula. Suponha um experimento com 4 tratamentos, o vetor deve ser montado seguindo este modelo: \emph{result = c("a","a","ab","b")}.



}
}
\seealso{
\code{\link{graf.medias}}
}
\examples{
data(exp1)
attach(exp1)

#O teste de Tukey foi realizado e as medias foram classificadas dessa forma:
#D	77,50	a
#B	76,25	a
#A	67,50	b
#E	66,25	b
#C	28,75	c
#---------------
#O vetor das medias deve ser montado seguindo a ordem alfabetica dos tratamentos:

result=c("b","a","c","a","b")  #veja que o trat A foi classificado pela letra "b"
                               #seguindo o resultado do teste e os demais tratamentos
                               #mantem a sua classificacao

graf.medias2(dados=exp1,
             trat=trat,
             resp=resp,
             result=result,
             result.type = 1,
             col = "gray70",
             ylab = "Média",
             xlab = "Tratamentos")




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
