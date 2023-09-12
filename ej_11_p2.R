
# ej_11_p2 ----------------------------------------------------------------

#prreguntar en clase, esta mal je
rm(list=ls())
x1 <- readline("Ingrese un valor para x1: ")
x2 <- readline("Ingrese un valor para x2: ")
x3 <- readline("Ingrese un valor para x3: ")
x4 <- readline("Ingrese un valor para x4: ") 
x5 <- readline("Ingrese un valor para x5: ")
y1 <- readline("Ingrese un valor para y1: ")
y2 <- readline("Ingrese un valor para y2: ")
y3 <- readline("Ingrese un valor para y3: ")
y4 <- readline("Ingrese un valor para y4: ")
y5 <- readline("Ingrese un valor para y5: ")
X <- c(x1,x2,x3,x4,x5)
Y <- c(y1,y2,y3,y4,y5)
x <- as.numeric(X)
y <- as.numeric(Y)
i = 1
for ( i in x ) {
if ( y[i] >= x[i] ) {
next
}
 print(paste0("El punto ",x[i],y[i]," pertenece al area sombreada"))
 i == i + 1
 }
