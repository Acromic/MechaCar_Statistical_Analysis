library(dplyr) # load dplyr

mechaCarDf <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) # load csv

# head(mechaCarDf)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCarDf ) # load lm function

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechaCarDf))  #summarize statistics
