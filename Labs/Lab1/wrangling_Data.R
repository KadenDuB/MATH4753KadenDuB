ddt <- read.csv("DDT.csv")
I=ddt$WEIGHT
z=(I-mean(I))/sd(I)

# Outlier
ddt$WEIGHT[abs(z) >= 3]

# Possible Outlier
ddt$WEIGHT[abs(z) >= 2 & abs(z) <= 3]

#Sd(z)
sd(z)