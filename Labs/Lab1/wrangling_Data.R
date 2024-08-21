ddt <- read.csv("DDT-1.csv")

# Find the mean WEIGHT of SMBUFFALO fish to 4 decimal places
ddt %>% filter(SPECIES == "SMBUFFALO") %>% summarize(mean_WEIGHT = mean(WEIGHT))
with(ddt, mean(ddt[SPECIES == "SMBUFFALO",]$WEIGHT))

#  Find the mean LENGTH of CCATFISH which have DDT > 33 to 2 decimal places
ddt %>% filter(SPECIES == "CCATFISH" & DDT > 33) %>% summarize(mean_LENGTH = mean(LENGTH))
with(ddt, mean(ddt[SPECIES == "CCATFISH" & DDT > 33,]$LENGTH))

# Find the standard deviation of DDT for fish that are either  LMBASS  or SMBUFFALO to 4 decimal places 
ddt %>% filter(SPECIES == "LMBASS" | SPECIES == "SMBUFFALO") %>% summarize(standard_Deviation = sd(DDT))
with(ddt, sd(ddt[SPECIES == "LMBASS" | SPECIES == "SMBUFFALO",]$DDT))

# Find the number of fish that have a LENGTH > 40  and WEIGHT > 1000
ddt %>% filter(LENGTH > 40 & WEIGHT > 1000) %>% summarize(number_TOTAL = length(DDT))
with(ddt, length(ddt[LENGTH > 40 & WEIGHT > 1000,]$DDT))