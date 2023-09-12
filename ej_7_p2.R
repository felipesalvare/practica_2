
# ej 7 p2 -----------------------------------------------------------------
##un algoritmo que al ingresar una fecha me da la del dia siguiente, cuenta tambien años bisiestos (me costo ja)
rm(list = ls())
fecha <- readline ( "Ingrese la fecha de hoy (DD/MM/YYYY): " )
DD <- substr ( fecha , 1 , 2 ) ; dd <- as.numeric(DD)
MM <- substr ( fecha , 4 , 5 ) ; mm <- as.numeric(MM)
YY <- substr ( fecha , 7 , 10 ) ; yy <- as.numeric(YY)
febr4 <- ( yy %% 4)
febr100 <- (yy %% 100 )
febr400 <- ( yy %% 400 )
if ( mm == 02 ) {
  if ( febr4 == 0 ) {
    if ( febr100 == 0) {
      if ( febr400 == 0 ) {
        if ( dd == 29 ) {
          dia <- 01 ; mes <- 03 ; anio <- yy
        } else {
          dia <- dd +1 ; mes <- mm ; anio <- yy
        }
      } else if ( dd == 28 ) {
        dia <- 01 ; mes <- 03 ; anio <- yy      
      } else {
          dia <- dd +1 ; mes <- mm ; anio <- yy
      }
    } else if ( dd == 29 ) {
      dia <- 01 ; mes <- 03 ; anio <- yy
    } else {
      dia <- dd +1 ; mes <- mm ; anio <- yy
    }
  } else if ( dd == 28 ) {
    dia <- 01 ; mes <- 03 ; anio <- yy
  } else {
    dia <- dd + 1 ; mes <- mm ; anio <- yy
  }
} else if ( mm == 01 | mm == 03 | mm == 05 | mm == 07 | mm == 08 | mm == 10 | mm == 12 ) {
  if ( dd == 31 ) {
    if ( mm == 12 ) {
      dia <- 01 ; mes <- 01 ; anio <- yy + 1
    } else {
      dia <- 01 ; mes <- mm + 1 ; anio <- yy
    } 
  } else {
    dia <- dd + 1 ; mes <- mm ; anio <- yy
  }
} else if ( dd == 30 ) {
  dia <- 01 ; mes <- mm + 1 ; anio <- yy
} else {
  dia <- dd + 1 ; mes <- mm ; anio <- yy
}


#dias <- substr( fechafinal, 1, 2)
#mes <- substr( fechafinal, 4, 5) ; mesnumeric <- as.numeric ( mes )
#anio <- substr( fechafinal, 7, 10)

#meses <- c(1,2,3,4,5,6,7,8,9,10,11,12)
#names(meses) <- c("enero","febrero","marzo","abril","mayo","junio","julio","agosto","septiembre","octubre","noviembre","diciembre")
if ( mes == 1 ) {
  mesnombre <- "enero"
} else if ( mes == 2 ) {
  mesnombre <- "febrero"
} else if ( mes == 3 ) {
  mesnombre <- "marzo"
} else if ( mes == 4 ) {
  mesnombre <- "abril"
} else if ( mes == 5 ) {
  mesnombre <- "mayo"
} else if ( mes == 6 ) {
  mesnombre <- "junio"
} else if ( mes == 7 ) {
  mesnombre <- "julio"
} else if ( mes == 8 ) {
  mesnombre <- "agosto"
} else if ( mes == 9 ) {
  mesnombre <- "septiembre"
} else if ( mes == 10 ) {
  mesnombre <- "octubre"
} else if ( mes == 11 ) {
  mesnombre <- "noviembre" 
} else {
  mesnombre <- "diciembre"
}

print(paste0("El resultado es: día ",dia," de ",mesnombre," de ",anio))