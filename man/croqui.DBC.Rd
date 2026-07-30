\name{croqui.DBC}
\alias{croqui.DBC}
\title{
Sorteio dos tratamentos em um delineamento em blocos completos
}
\description{
Apresenta a distribuicao aleatoria dos tratamentos em um experimento em blocos completos.
}
\usage{
croqui.DBC(ntrat, nblocos)
}
\arguments{
  \item{ntrat}{numero de tratamentos em teste no experimento}
  \item{nblocos}{numero de blocos no experimento}
}
\details{
Permite obter o croqui da distribuicao dos tratamentos nos blocos.

}
\value{Retorna o croqui da distribuicao dos tratamentos nos blocos.


}
\references{
Banzatto, D. A.; Kronka, S. N. Experimentacao Agricola. Jaboticabal: FUNEP.
2006. 237p.
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
O resultado final e um croqui com os tratamentos distribuidos dentro de cada bloco.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#Exemplo: sorteio de 3 tratamentos em 4 blocos

croqui.DBC(ntrat=3,nblocos=4)

}
