
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


