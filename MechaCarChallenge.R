# DELIVERABLE 1

library(dplyr)
f <- read.csv(file="MechaCar_mpg.csv",check.names=F,stringsAsFactors=F)
regress <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=f)
print(regress)
print(summary(regress))

# DELIVERABLE 2

f2 <- read.csv(file="Suspension_Coil.csv",check.names=F,stringsAsFactors=F)
total_summary <- f2 %>% summarize(Mean=mean(PSI),
                                  Median=median(PSI),
                                  Variance=var(PSI),
                                  SD=sd(PSI)) 
print(total_summary)

lot_summary <- f2 %>% 
                group_by(Manufacturing_Lot)%>% 
                summarize(Mean=mean(PSI),
                          Median=median(PSI),
                          Variance=var(PSI),
                          SD=sd(PSI))
print(lot_summary)

# DELIVERABLE 3

t.test(f2$PSI,mu=1500)

lot1 <- subset(f2, Manufacturing_Lot=="Lot1")
lot2 <- subset(f2, Manufacturing_Lot=="Lot2")
lot3 <- subset(f2, Manufacturing_Lot=="Lot3")

t.test(lot1$PSI,mu=1500)
t.test(lot2$PSI,mu=1500)
t.test(lot3$PSI,mu=1500)