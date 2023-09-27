
# Parcialito integrador de las prácticas 1 y 2 ----------------------------

#El objetivo de este programa es comparar la temperatura de un día de agosto con la media del mes entero.

rm(list=ls())

#En esta sección le pido al usuario que ingrese un día de agosto. Si el valor ingresado no es valido
#el programa le informa al usuario que el valor no es valido y termina el programa
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
  #En esta seccion le pido al usuario que ingrese temperaturas para todos los dias del mes.
  #Si el valor ingresado no es valido, le pido que vuelva a ingresar la temperatura correspondiente
  for ( i in 1:31 ) {
    tempc <- readline("Ingrese una temperatura valida: ")
    tempb <- as.numeric(tempc)
     while (is.na(tempb) == TRUE ) {
      print("La temperatura ingresada no es valida: ")
      tempc <- readline("Ingrese una temperatura válida: ")
      tempb <- as.numeric(tempc)
     } 
  #Cuando el contador i sea igual al numero de dia ingresado el programa guarda esa temperatura como valor
    if ( i == dia ) {   
      tempdia <- tempb  
      temp <- temp + tempb  
      tempmedia <- temp/31  
    } else {                 
    temp <- temp + tempb
    tempmedia <- temp/31
    }                      
  }
#Luego de calcular la temperatura media le pido al programa que escriba un mensaje dependiendo de si la 
  #temperatura ingresada es mayor, menor o igual a la media mensual.
  if ( tempdia < tempmedia ) {
    print(paste0("El dia ",dia," del mes de Agosto la temperatura fue de ",tempdia,"°C, es decir, por debajo de la media mensual."))
  } else if ( tempdia == tempmedia ) {
    print(paste0("El día ",dia," del mes de Agosto la temperatura fue de ",tempdia,"°C, es decir, igual a la media."))
  } else {
    print(paste0("El día ",dia," del mes de Agosto la temperatura fue de ",tempdia,"°C, es decir, por encima de la media."))
  }
}

#######Fin

