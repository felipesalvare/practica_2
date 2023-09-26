rm(list=ls())

diacharacter <- readline("Ingrese un día del mes de agosto: ")
dia <- as.numeric(diacharacter)
i <- 0
temp <- i
if ( is.na(dia) == TRUE ) {
  print("El valor ingresado no corresponde a un día de agosto.")
} else if (dia > 31) {
  print("El valor ingresado no corresponde a un día de agosto.")
} else if ( dia < 1) {
  print("El valor ingresado no corresponde a un día de agosto.")
} else {
  for ( i in 1:31 ) {
    tempc <- readline("Ingrese una temperatura valida: ")
    tempb <- as.numeric(tempc)
     while (is.na(tempb) == TRUE ) {
      print("La temperatura ingresada no es valida: ")
      tempc <- readline("Ingrese una temperatura válida: ")
      tempb <- as.numeric(tempc)
     } 
    if ( i == dia ) {   
      tempdia <- tempb  
      temp <- temp + tempb  
      tempmedia <- temp/31  
    } else {                 
    temp <- temp + tempb
    tempmedia <- temp/31
    }                      
  }
  if ( tempdia < tempmedia ) {
    print(paste0("El dia ",dia," del mes de Agosto la temperatura fue de ",tempdia,"°C, es decir, por debajo de la media mensual."))
  } else if ( tempdia == tempmedia ) {
    print(paste0("El día ",dia," del mes de Agosto la temperatura fue de ",tempdia,"°C, es decir, igual a la media."))
  } else {
    print(paste0("El día ",dia," del mes de Agosto la temperatura fue de ",tempdia,"°C, es decir, por encima de la media."))
  }
}



