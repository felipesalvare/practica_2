
# ej_10_p2 ----------------------------------------------------------------


rm(list=ls())
A <- readline( "Ingrese un número desde -3.14 a 3.14: ")
N <- readline( "Ingrese la precisión deseada: ")
a <- as.numeric(A) #El ejercicio funciona pero no se como pasar "pi" o "pi/2" as.numeric 
n <- as.numeric(N)
x <- 0:n
i <- 0
senx <- c()
for ( i in x ) {
  senx <- c( senx, ( ( ( - 1 ) ** x[i] ) / factorial( ( 2 * x[i] ) + 1 ) ) * ( a ** ( ( 2 * x[i] ) + 1 ) ) )
  error <- ( a ** ( ( 2 * x[i] ) + 3) ) / factorial( ( 2 * x[i] ) + 3 ) 
  i == i + 1
}
#print ( senx )
#print (error)
sumatoria <- sum(senx)
#print( sumatoria )
print(paste0( "El seno de ",a," es igual a ",sumatoria," con un error menor o igual a ",error, "."))
