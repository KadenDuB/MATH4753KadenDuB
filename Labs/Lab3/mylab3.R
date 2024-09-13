## Get the working directory
getwd();

## Read in the spruce file and show the first 6 elements
sp <- read.csv('SPRUCE.csv')
head(sp)

## Scatter plot within given constraints
with(sp,
     {
      plot(Height~BHDiameter,
       bg="Blue",
       pch=21,
       cex=1.2,
       ylim=c(0,1.1*max(Height)),
       xlim=c(0,1.1*max(BHDiameter)),
       main="BHDiameter vs Height",
       xlab="BHDiameter (cm)",
       ylab="Height (m)",
      )
    }
)

## 3 trend scatter plots
library(s20x)
layout(matrix(1:3,nr=1,nc=3,byrow=FALSE))
trendscatter(Height~BHDiameter, f=0.5, data=sp)
trendscatter(Height~BHDiameter, f=0.6, data=sp)
trendscatter(Height~BHDiameter, f=0.7, data=sp)