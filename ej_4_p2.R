
# ej 4 p2 -----------------------------------------------------------------


# a) ----------------------------------------------------------------------
rm(list=ls())
temp <- readline("Ingrese un valor de temperatura en grados °C: ")
x <- as.numeric(temp)
  if(x > 38) {
  print("Fiebre alta")
} else if(x > 37) {
  print("fiebre baja")
} else if(x >= 35) {
  print("Temperatura normal")
} else {
  print("Temperatura baja")
}

# b) ----------------------------------------------------------------------

rm(list=ls())
dia <- readline("Ingrese un día de la semana o un número del uno al siete: ")
if ( dia == "lunes" ) {
  print ( "1" )
} else if ( dia == "martes") { 
  print ( "2" )
}  else if ( dia == "miercoles" ) {
  print ( "3" )
}   else if ( dia == "jueves" ) {
  print ( "4" )
}  else if ( dia == "viernes" ) { 
  print ( "5" )
} else if ( dia == "sabado") {
  print ( "6")
} else if ( dia == "domingo" ) { 
  print ( "7" ) 
} else if ( dia == "1" ) {
  print ( "lunes" ) 
} else if ( dia == "2" ) { 
  print ( "martes" )
} else if ( dia == "3" ) {
  print ( "miercoles" ) 
} else if ( dia == "4" ) {
  print ( "jueves" )
} else if ( dia == "5" ) {
  print ( "viernes" ) 
} else if ( dia == "6" ) {
  print ( "sabado" )
} else if ( dia == "7" ) {
  print ( "domingo" ) 
} else {
  print ( "El valor ingresado no corresponde a un dato almacenado.")
}
