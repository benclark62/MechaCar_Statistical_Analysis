library(dplyr)
setwd("~/Desktop/Data_Bootcamp_Project_Work/Module_15/R_Analysis/M15_challenge")

library(dplyr)
MechaCar_mpg <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset

head(MechaCar_mpg)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg) #STEP 3 generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)) #STEP 4 generate summary statistics
