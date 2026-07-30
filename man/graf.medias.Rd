\name{graf.medias}
\alias{graf.medias}
\title{
Grafico das medias com desvio padrao e erro padrao da media
}
\description{
Apresenta o grafico das medias de experimentos com tratamentos em
estrutura simples com a barra do desvio padrao ou erro padrao da media
}
\usage{
graf.medias(dados,
            trat,
            resp=c(),
            erro = c("sd","se","none"),
            col = NULL,
            ylab = "Média",
            xlab = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dados}{nome da identificacao do banco de dados dentro do programa R}
  \item{trat}{nome da variavel ou da coluna do banco de dados que identifica os tratamentos}
  \item{resp=c()}{nome(s) da(s) variavel(is) ou da(s) coluna(s) do banco de dados que identifica(m) a(s) variavel(is) resposta(s), veja \strong{Note} para maiores detalhes}
  \item{erro}{nome do tipo de estatistica que se quer representar no grafico, sendo o \emph{default} o desvio padrao \emph{sd}, o erro padrao da media \emph{se} e somente as medias quando \emph{none}}
  \item{col}{definicao da cor(es) das medias, veja \strong{Note} para maiores detalhes}
  \item{ylab}{nome atribuido ao eixo vertical, o \emph{default} e Media}
  \item{xlab}{nome atribuido ao eixo horizontal }
}
\details{
Permite obter o grafico das medias dos tratamentos exibindo ou nao o desvio padrao ou erro padrao da media.
}
\value{
Retorna o grafico das medias dos tratamentos exibindo ou nao o desvio padrao ou erro padrao da media.
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
\note{Observe estes detalhes:
\enumerate{
\item em \emph{resp=c()}:
\itemize{
\item se for somente uma variavel resposta, insira o nome da variavel resposta entre os parenteses, por exemplo, resp=c(nome_da_variavel_resposta)
\item se forem mais de uma variavel resposta, insira os nomes das variaveis entre os parenteses, separando-as com virgula, por exemplo, resp=c(nome_da_variavel_1, nome_da_variavel_2,..., nome_da_variavel_n)
}
\item em col
\itemize{
\item se nao declarar a cor, o programa define como cinza
\item se for declarar cor para uma variavel resposta, basta informar o numero ou o nome da cor em ingles entre aspas, por exemplo, \emph{col=3} ou \emph{col="green"}
\item se for declarar cor para mais de uma variavel resposta, informe tantas cores quanto o numero de tratamentos, por exemplo, se forem cinco tratamentos, \emph{col=c(2,3,4,5,6) ou \emph{col=c("red","green3","blue","cyan","magenta")}}
}
}

}



\seealso{
\code{\link{graf.medias2}}
}
\examples{
data(exp1)
attach(exp1)

graf.medias(exp1,
            trat=trat,
            resp=c(resp),
            erro = c("se"),
            col = "lightgreen",
            ylab = "Média",
            xlab = "Tratamentos")

#==============================================================================

graf.medias(exp1,
            trat=trat,
            resp=c(resp,resp2),
            erro = c("sd"),
            col = c(2:6),   #ou col = c("red","green3","blue","cyan","magenta")
            ylab = "Média",
            xlab = NULL)

#==============================================================================
#==============================================================================

data(exp2)
attach(exp2)

graf.medias(exp2,
            trat=dent,
            resp=c(mfse,mfae,mfpe, mfgoe, mfsd, mfad,  mfpd, mfgod),
            erro = c("none"),
            col = NULL,
            ylab = "Média",
            xlab = NULL)


}

