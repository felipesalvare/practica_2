rm(list=ls())
k <- seq(0,14.5,by=0.5)
temperaturask <- c()
for ( i in k) {
  temperaturask <- c(temperaturask,285 + i)
}
temperaturasc <- c()
for ( i in temperaturask) {
  temperaturasc <- c(temperaturasc, i - 273 )
}
dias <- 1:30
j <- 1
#for( j in dias) {
  #for( j in dias) {
  while( temperaturasc[j] < 30) {
  print(paste0("el día ",dias[j]," y con una temperatura de ",temperaturasc[j]," todavia no se alcanzo el umbral de °30."))
   j <- j + 1
    if (j > 30) {
      break
    }
  }
#}
¨#}
