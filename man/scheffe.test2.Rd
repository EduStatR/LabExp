\name{scheffe.test2}
\alias{scheffe.test2}
\title{
Teste Scheffe considerando as medias dos tratamentos e informacoes da ANAVA
}
\description{Realiza o teste Scheffe em um conjunto de medias necessitando de informacoes da ANAVA
}
\usage{
scheffe.test2(medias, repet, GLRes, SQRes, alpha = 0.05)

}
\arguments{
  \item{medias}{nome do vetor ou da coluna do banco de dados que identifica as medias}
  \item{repet}{nome do vetor ou da coluna do banco de dados que identifica o numero de repeticoes de cada tratamento}
  \item{GLRes}{graus de liberdade do residuo}
  \item{SQRes}{soma de quadrados do residuo}
  \item{alpha}{nivel de significancia do teste, o \emph{default} e 0.05}
}
\details{Permite a realizacao do teste Scheffe em um conjunto de medias necessitando informar o numero de repeticoes de cada tratamento e dados da ANAVA
}
\value{Retorna as estatisticas do teste Scheffe
}
\references{

}

\author{Adriana Dias,
\email{adriana.dias@unifal-mg.edu.br}

Flavio Bittencourt,
\email{flavio.bittencourt@unifal-mg.edu.br}
}
\note{Para realizar o teste Scheffe e necessario um conjunto (vetor) de medias, um vetor de repeticoes de cada tratamento e informacoes da ANAVA.
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{scheffe.test}}
}
\examples{

data(exp6)
attach(exp6)
#Os valores GLRes e SQRes foram obtidos da ANAVA dos dados
scheffe.test2(medias, repet, GLRes=10, SQRes=40.8, alpha = 0.05)
#Apos executar a funcao, declare na tela Editor de dados o contraste de interesse


}
