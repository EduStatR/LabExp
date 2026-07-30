\name{croqui.DIC}
\alias{croqui.DIC}

\title{
Sorteio dos tratamentos em um delineamento inteiramente ao acaso
}
\description{
Apresenta a distribuicao dos tratamentos segundo o delineamento inteiramente ao acaso balanceado.
}
\usage{
croqui.DIC(ntrat, nrep)
}
\arguments{
  \item{ntrat}{numero de tratamentos em teste}
  \item{nrep}{numero de repeticoes dos tratamentos}
}
\details{
Permite obter o croqui da distribuicao dos tratamentos segundo o delineamento inteiramente ao acaso.

}
\value{Retorna o croqui da distribuicao dos tratamentos segundo o delineamento inteiramente ao acaso.



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
\note{Esta funcao realiza o sorteio dos tratamentos considerando um experimento balanceado.
Como o croqui apresentado tenta ser o mais quadrado possivel, pode ser que apareca NA no(s) ultimo(s) espaco(s) para relatar que nao ha parcela e nem tratamento.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#Exemplo: sorteio de 3 tratamentos com 4 repeticoes
croqui.DIC(ntrat=3, nrep=4)
#Exemplo: sorteio de 3 tratamentos com 5 repeticoes
croqui.DIC(ntrat=3, nrep=5)  #aparece NA na linha 4 e coluna 4
#Exemplo: sorteio de 3 tratamentos com 6 repeticoes
croqui.DIC(ntrat=3, nrep=6)  #aparece NA na linha 4 e colunas 4 e 5

}
