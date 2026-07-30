graf.medias2 <- function(dados,
                         trat,
                         resp,
                         result = NULL,
                         result.type = 1,
                         result.cex = 0.9,
                         result.font = 1,
                         result.col = "black",
                         digits = 2,
                         col = "gray70",
                         ylab = "Média",
                         xlab = NULL,
                         graf = TRUE){

  if(!graf) graphics.off()

  ##-----------------------------------------
  ## Captura dos nomes das variáveis
  ##-----------------------------------------

  trat.nome <- deparse(substitute(trat))
  resp.nome <- deparse(substitute(resp))

  ##-----------------------------------------
  ## Médias
  ##-----------------------------------------

  aux <- aggregate(dados[[resp.nome]],
                   by = list(dados[[trat.nome]]),
                   FUN = mean,
                   na.rm = TRUE)

  grupos <- as.character(aux[,1])
  media  <- aux[,2]

  ntrat <- length(grupos)

  ##-----------------------------------------
  ## Verificação dos rótulos
  ##-----------------------------------------

  if(!is.null(result)){

    if(length(result) != ntrat){
      stop("O número de elementos de 'result' deve ser igual ao número de tratamentos.")
    }

  }

  ##-----------------------------------------
  ## Cores
  ##-----------------------------------------

  if(length(col) == 1)
    col <- rep(col, ntrat)

  if(length(col) < ntrat)
    stop("Número insuficiente de cores.")

  ##-----------------------------------------
  ## Gráfico
  ##-----------------------------------------

  #limite <- max(media) * 1.20
  #
  if(result.type == 1){
    limite <- max(media) * 1.30
  }else{
    limite <- max(media) * 1.20
  }



  #
  pos <- barplot(media,
                 names.arg = grupos,
                 col = col,
                 ylim = c(0, limite),
                 las = 1,
                 ylab = ylab,
                 xlab = ifelse(is.null(xlab), trat.nome, xlab),
                 border = "black",
                 space = 0.35)

  box(bty = "l")

  ## Linha de base

  segments(min(pos)-0.6,
           0,
           max(pos)+0.6,
           0,
           lwd = 1)

  ##-----------------------------------------
  ## Texto acima das barras
  ##-----------------------------------------

  desloc <- 0.07 * max(media)

  if(result.type == 1){

    ## Média + classificação

    if(is.null(result)){

      texto <- round(media, digits)

    }else{

      texto <- paste(round(media, digits), result)

    }

  }else if(result.type == 2){

    ## Apenas classificação

    if(is.null(result))
      stop("Informe o argumento 'result'.")

    texto <- result

  }else if(result.type == 3){

    ## Apenas média

    texto <- round(media, digits)

  }else{

    stop("Use result.type = 1, 2 ou 3.")

  }

  text(pos,
       media + desloc,
       labels = texto,
       cex = result.cex,
       font = result.font,
       col = result.col)

  ##-----------------------------------------
  ## Tabela
  ##-----------------------------------------

  tabela <- data.frame(
    Tratamento = grupos,
    Media = round(media, digits)
  )

  if(!is.null(result))
    tabela$Grupo <- result

  cat("\n")
  cat("        Resultados\n")
  cat("-----------------------------\n")
  print(tabela,row.names = FALSE)
  cat("-----------------------------\n")

  invisible(tabela)

}
