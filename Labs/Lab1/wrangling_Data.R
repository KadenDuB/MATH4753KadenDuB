ddt <- read.csv("DDT-1.csv")


with(ddt, ddt[SPECIES == 'LMBASS' & LENGTH > 30,])