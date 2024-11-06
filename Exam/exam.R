epagas <- read.csv('EPAGAS.csv')
epagas = epagas$MPG

z = (epagas - mean(epagas))/sd(epagas)
epagas[abs(z) >= 2 & abs(z) <= 3]

length(epagas[abs(z) < 3])/length(epagas)

mtbe <- read.csv('MTBE.csv')
table(mtbe$WellClass, mtbe$Aquifier)

120/223


