
# ej 9 p2 --------------------------------------------------------------------
rm(list = ls())
A <- readline ( "ingrese un numero: ")
a <- as.numeric ( A )
x <- 1:1000
for ( i in x ) {
  print( i + 1 = i - ( i ** 2 - a ) / 2 * i ) 
}
