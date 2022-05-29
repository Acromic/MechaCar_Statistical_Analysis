library(dplyr) # load dplyr

mechaCarDf <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) # load csv

# head(mechaCarDf)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCarDf ) # load lm function

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCarDf))  #summarize statistics

suspensionTable <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# suspensionDf <- read.table(file='Suspension_Coil.csv', header=TRUE)

total_summary <- suspensionTable %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),Standard_Deviation=sd(PSI)) # use the summarize function

lot_summary <- suspensionTable %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),Standard_Deviation=sd(PSI), .groups = 'keep')

t.test(suspensionTable$PSI,mu= 1500)

t.test(subset(suspensionTable,Manufacturing_Lot=='Lot1')$PSI,mu= 1500)

t.test(subset(suspensionTable,Manufacturing_Lot=='Lot2')$PSI,mu= 1500)

t.test(subset(suspensionTable,Manufacturing_Lot=='Lot3')$PSI,mu= 1500)




