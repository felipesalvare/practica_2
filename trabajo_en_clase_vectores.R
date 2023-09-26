
# ej_clase_vectores ------------------------------------------------------
rm(list=ls())
set.seed(11111)
#Dado datos de humedad relativa de un ano de una estacion
Datos<- 15:97
##Serie de datos de un mes
HR <- sample(Datos, 31, replace = TRUE)
##Y datos de ocurrencia de precipitacion en la misma estacion
ocurrencia_pp<- sample(c(1,0),31,replace = TRUE)

media <- mean ( HR )

saturadodias <- which( HR > 90 )

saturadodatos <- HR[ HR > 90 ]

lluvia_saturacion <- which ( HR > 90 & ocurrencia_pp == 1 )
#diasdelluvia <- sum( ocurrencia_pp[ocurrencia_pp == 1] )
diasdelluvia <- sum(ocurrencia_pp == 1)

###########################################################

rm(list=ls())
HI_final <- c()
for (i in 1:5) {
  TF <- as.numeric(readline("Ingrese la temperatura en °F: ") ) 
  R <- as.numeric(readline("Ingresse la humedad relativa en %: "))

HI<- -42.379 + 2.04901523* TF + 10.14333127* R -
  0.22475541 * TF * R - 6.83783 * 10**-3 *TF**2
-5.481717*10**-2*R**2+ 1.22874*10**-3*TF**2*R + 8.5282 * 10**-4*TF *R**2
- 1.99 *10**-6*TF**2*R**2

if ( TF < 80) {
  HI_final[i] <- HI
} else if ( R > 85 & TF < 87 ) {
  Ajuste<-((R-85)/10) * ((87-TF)/5)
  HI_final[i] <- HI + Ajuste
} else if ( R < 13 & TF < 112) {
  Ajuste<-((13-R)/4)*sqrt((17-abs(TF-95.))/17)
  HI_final[i] <- HI - Ajuste
} else if ( HI < 80 ) {
  HI_final[i] = 0.5 * (TF + 61 + ((TF-68)*1.2) + (R*0.094))
} else {
  HI_final[i] <- HI
}
}
i = 1
indice <- c()
for ( i in 1:length(HI_final) ) {
  if ( HI_final[i] >= 125 ) {
    indice[i] <- "Extreme danger"
  } else if ( HI_final[i] >= 103 ) {
    indice[i] <- "Danger"
  } else if ( HI_final[i] >= 90 ) {
    indice[i] <- "Extreme caution"
  } else {
    indice[i] <- "Caution"
  } 
}
print(indice)
