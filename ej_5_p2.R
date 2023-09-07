
# ej 5 p2 -----------------------------------------------------------------
#esto esta mal, repensar.
rm(list=ls())
A <- readline ( "Ingrese un numero entero: " ) 
B <- readline ( "Ingrese otro numero entero: ") 
#aa <- as.integer(A)
#bb <- as.integer(B)
#a <- is.integer(aa)
#b <- is.integer(bb)
a <- as.numeric(A)
b <- as.mumeric(B)

if ( aa & bb ) {
  c <- aa/bb
  } else {
    print("No son numeros enteros")
}
if ( is.integer(c) == TRUE ) {
  print ( "A y B son multiplos" )
} else {
  print ( "A y B no son multiplos" )
}
