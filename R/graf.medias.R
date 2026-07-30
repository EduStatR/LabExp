graf.medias <- function(dados,
                        trat,
                        resp=c(),
                        erro = c("sd","se","none"),
                        col = NULL,
                        ylab = "Média",
                        xlab = NULL,graf=TRUE){
  if(!graf) graphics.off()

  erro <- match.arg(erro)

  trat <- deparse(substitute(trat))

  respostas <- sapply(substitute(resp)[-1], deparse)

  grupos <- unique(as.character(dados[[trat]]))

  ntrat <- length(grupos)
  nresp <- length(respostas)

  media  <- matrix(NA,ntrat,nresp)
  erro.m <- matrix(NA,ntrat,nresp)

  for(i in seq_along(respostas)){

    aux <- aggregate(dados[[respostas[i]]],
                     by=list(dados[[trat]]),
                     FUN=mean,
                     na.rm=TRUE)

    media[,i] <- aux[,2]

    if(erro=="sd"){

      aux2 <- aggregate(dados[[respostas[i]]],
                        by=list(dados[[trat]]),
                        FUN=sd,
                        na.rm=TRUE)

      erro.m[,i] <- aux2[,2]

    }else if(erro=="se"){

      aux2 <- aggregate(dados[[respostas[i]]],
                        by=list(dados[[trat]]),
                        FUN=function(x)
                          sd(x,na.rm=TRUE)/sqrt(length(na.omit(x))))

      erro.m[,i] <- aux2[,2]

    }else{   # erro == "none"

      erro.m[,i] <- 0

    }
  }

  rownames(media)  <- grupos
  colnames(media)  <- respostas
  rownames(erro.m) <- grupos
  colnames(erro.m) <- respostas


  #### definição das cores

  if(is.null(col)){

    if(nresp==1){

      cores <- rep("gray70",ntrat)

    }else{

      cores <- gray.colors(ntrat,start=.35,end=.85)

    }

  }else{

    if(length(col)==1)
      cores <- rep(col,ntrat)
    else{

      if(length(col)<ntrat)
        stop("Número insuficiente de cores.")

      cores <- col[1:ntrat]

    }

  }


  #### gráfico

  if(nresp==1){

    graf <- barplot(media[,1],
                    names.arg=grupos,
                    col=cores,
                    ylim = c(0,max(media+erro.m,na.rm=TRUE)*1.2),
                    las=1,
                    ylab=ylab,
                    xlab=ifelse(is.null(xlab),trat,xlab),
                    space=.35)

    box(bty = "l")

    if(erro!="none"){

      arrows(graf,
             media[,1]-erro.m[,1],
             graf,
             media[,1]+erro.m[,1],
             angle=90,
             code=3,
             length=.05)

    }


    text(graf,
         media[,1]+erro.m[,1],
         labels=round(media[,1],2),
         pos=3,
         cex=.8)

  }else{

    graf <- barplot(media,
                    beside=TRUE,
                    col=cores,
                    ylim=c(0,max(media+erro.m)*1.3),
                    las=1,
                    ylab=ylab,
                    xlab=ifelse(is.null(xlab),"Variáveis",xlab))


    box(bty = "l")




    if(erro!="none"){

      arrows(graf,
             media-erro.m,
             graf,
             media+erro.m,
             angle=90,
             code=3,
             length=.05)

    }


    text(graf,
         media+erro.m,
         labels=round(media,2),
         pos=3,
         cex=.75)

    legend("top",
           legend=grupos,
           fill=cores,
           horiz=TRUE,
           title="Tratamentos",
           #bty="n",
           cex=.7,
           box.col=TRUE)



  }

  box(bty = "l")

  invisible(list(media=media,
                 erro=erro.m))
}

