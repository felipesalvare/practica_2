
# Ej 3 p2 -----------------------------------------------------------------

rm(list=ls())
a <- readline("Ingrese un número: ")
x <- as.numeric(a)
if(x < 0) {
  y <- 5 + (1 + 3 * (x ^ 2)) ^ 0.5
} else if(x == 0) {
    y <- 0
} else {
  y <- 1 - (1 + 5 * (x ^ 2)) ^ 0.5
}
print(y)