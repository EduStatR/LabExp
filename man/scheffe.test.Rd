\name{scheffe.test}
\alias{scheffe.test}
\title{
Teste Scheffe para tratamentos em estrutura simples}
\description{Realiza o teste Scheffe em um conjunto de dados, mas necessita de informacoes da ANAVA}
\usage{
scheffe.test(trat, resp, GLRes, SQRes, alpha = 0.05)
}
\arguments{
  \item{trat}{nome da variavel ou da coluna do banco de dados que identifica os tratamentos ou grupos testados}
  \item{resp}{nome da variavel ou da coluna do banco de dados que identifica a variavel resposta}
  \item{GLRes}{graus de liberdade do residuo}
  \item{SQRes}{soma de quadrados do residuo}
  \item{alpha}{nivel de significancia do teste, o \emph{default} e 0.05}
}
\details{Permite a realizacao do teste Scheffe em um banco de dados.
}
\value{Retorna as estatisticas do teste Scheffe.
}
\references{
BANZATTO, D. A.; KRONKA, S. do N. Experimentação agricola. 4. ed. Jaboticabal: FUNEP, 2006.

}

\author{Adriana Dias,
\email{adriana.dias@unifal-mg.edu.br}

Flavio Bittencourt,
\email{flavio.bittencourt@unifal-mg.edu.br}

Felipe de Melo Taveira

Beatriz de Oliveira Rodrigues

}
\note{Para realizar o teste Scheffe e necessario um banco de dados contendo a variavel independente, a variavel dependente (resposta) e informacoes da ANAVA.
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{scheffe.test2}}
}
\examples{

data(exp5)
attach(exp5)
#Os valores GLRes e SQRes foram obtidos da ANAVA dos dados
scheffe.test(trat, resp, GLRes=15, SQRes=23.456, alpha = 0.05)
#Apos executar a funcao, declare na tela Editor de dados o contraste de interesse


}
