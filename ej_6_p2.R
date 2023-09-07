
# ej 6 p2 -----------------------------------------------------------------
#Este algoritmo calcula el impuesto que debe ser abonado dado el suledo anual
rm(list=ls())
sueldo <- readline( "Ingrese su sueldo anual: ")
sueldoNum <- as.numeric( sueldo )
if ( sueldoNum <= 6000 ) {
  print ( "No paga impuestos" )
} else if ( sueldoNum <= 20000 ) {
  a <- ( sueldoNum - 6000 ) * 0.17
  print ( a )
} else if ( sueldoNum <= 50000 ) {
  b <- ( sueldoNum - 20000 ) * 0.3 + 2380
  print ( b )
} else if ( sueldoNum <= 60000 ) {
  c <- (sueldoNum - 50000 ) * 0.42 + 11380
  print ( c )
} else {
  d <- ( sueldoNum - 60000 ) * 0.47 + 15580
  print ( d )
}
