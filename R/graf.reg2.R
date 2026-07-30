graf.reg2 <- function(dados,resp,
                      desd ,
                      dentro ,
                      nivel = 1,
                      grau = NULL,
                      xlab = NULL,
                      ylab = "Média"
){
  desd.nome   <- deparse(substitute(desd))
  dentro.nome <- deparse(substitute(dentro))
  dados[[dentro.nome]]
  dados[[dentro.nome]] == nivel
  dentro.nome <- deparse(substitute(dentro))
  resp.nome <- deparse(substitute(resp))
  #pensar daqui pra frente...
  B_Ai <- dados[dados[[dentro.nome]] == nivel, ]

  x <- dados[dados[[dentro.nome]] == nivel, desd.nome]
  y <- dados[dados[[dentro.nome]] == nivel, resp.nome]

  medias<-tapply(y,x,mean)


  ##-----------------------------------------
  ## Médias observadas
  ##-----------------------------------------

  medias <- tapply(y, x, mean)

  x.obs <- as.numeric(names(medias))
  y.obs <- as.numeric(medias)

  ##-----------------------------------------
  ## Verificação do argumento
  ##-----------------------------------------

  if(!is.null(grau) && !(grau %in% c(1,2))){
    stop("'grau' deve ser NULL, 1 ou 2.")
  }

  ##-----------------------------------------
  ## Ajuste do modelo
  ##-----------------------------------------

  modelo <- NULL
  eq     <- NULL
  R2     <- NULL
  y.est  <- NULL

  if(identical(grau,1)){

    modelo <- lm(y ~ x)

    a <- coef(modelo)[1]
    b <- coef(modelo)[2]

    eq <- paste0("ŷ = ",
                 round(a,4),
                 ifelse(b>=0," + "," - "),
                 round(abs(b),4),
                 "x")

    mod <- lm(y.obs ~ x.obs)

    R2 <- summary(mod)$r.squared

    xg <- seq(min(x), max(x), length = 500)
    yg <- a + b*xg
    y.est <- a + b*x.obs

  }

  if(identical(grau,2)){

    modelo <- lm(y ~ x + I(x^2))

    a <- coef(modelo)[1]
    b <- coef(modelo)[2]
    c <- coef(modelo)[3]

    eq <- paste0("ŷ = ",
                 round(a,4),
                 ifelse(b>=0," + "," - "),
                 round(abs(b),4),
                 "x",
                 ifelse(c>=0," + "," - "),
                 round(abs(c),4),
                 "x²")

    mod <- lm(y.obs ~ x.obs + I(x.obs^2))

    R2 <- summary(mod)$r.squared

    xg <- seq(min(x), max(x), length = 500)
    yg <- a + b*xg + c*xg^2
    y.est <- a + b*x.obs + c*x.obs^2

  }

  ##-----------------------------------------
  ## Limites do gráfico
  ##-----------------------------------------

  if(is.null(grau)){
    li <- min(y.obs)*0.90
    ls <- max(y.obs)*1.10
  }else{
    li <- min(c(y.obs,y.est))*0.90
    ls <- max(c(y.obs,y.est))*1.10
  }

  ##-----------------------------------------
  ## Gráfico
  ##-----------------------------------------

  par(mar = c(5,4,6,2))

  if(is.null(grau)){

    plot(x.obs,
         y.obs,
         #type = "b",
         pch = 16,
         cex = .8,
         #lwd = 1,
         las = 1,
         bty = "l",
         ylim = c(li,ls),
         xlab = ifelse(is.null(xlab),dentro.nome,xlab),
         ylab = ylab)

    par(xpd = NA)
    legend("top",inset = c(0,-0.15),
           legend = "Médias observadas",
           pch = 16,
           #lty = 1,
           pt.cex = .7,
           cex = .7,
           bty = "o",
           #title = ""
           )

  }else{

    plot(xg,
         yg,
         type = "l",
         lwd = 1,
         las = 1,
         bty = "l",
         ylim = c(li,ls),
         xlab = ifelse(is.null(xlab),dentro.nome,xlab),
         ylab = ylab)

    points(x.obs,
           y.obs,
           pch = 16,
           cex = .8)

    par(xpd = NA)
    legend("top",inset = c(0,-0.25),
           legend = c(eq,
                      paste("R² =",round(R2*100,2),"%"),
                      "Médias observadas"),
           lwd = c(1,NA,NA),
           pch = c(NA,NA,16),
           lty = c(1,0,0),
           pt.cex = .7,
           cex = .7,
           bty = "o",
           #title = ""
           )
  }

  ##-----------------------------------------
  ## Tabela de resultados
  ##-----------------------------------------

  if(is.null(grau)){

    tabela <- data.frame(
      Nivel = x.obs,
      Observado = round(y.obs,4)
    )

  }else{

    tabela <- data.frame(
      Nivel = x.obs,
      Observado = round(y.obs,4),
      Estimado = round(y.est,4)
    )

  }

  cat("\n")
  cat("       Resultados\n")
  cat("--------------------------\n")
  print(tabela,row.names = FALSE)
  cat("--------------------------\n")

  invisible(list(
    modelo = modelo,
    tabela = tabela,
    R2 = R2
  ))

}
