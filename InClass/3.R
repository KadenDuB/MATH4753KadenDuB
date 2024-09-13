mtbe <- read.csv('MTBE.csv')
tble = table(mtbe$WellClass, mtbe$MTBE.Detect)
head(tble)

colSums(tble)
rowSums(tble)
sum(tble)

