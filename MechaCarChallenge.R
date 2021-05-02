library(dplyr)
f <- read.csv(file="MechaCar_mpg.csv")
regress <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=f)
print(regress)
print(summary(regress))

f2 <- read.csv(file="Suspension_Coil.csv")
total_summary <- data.frame(Mean=mean(f2$PSI), Median=median(f2$PSI), Variance=var(f2$PSI), SD=sd(f2$PSI))
print(total_summary)
lot_summary= 


