library(dplyr)
setwd("~/Desktop/Data_Bootcamp_Project_Work/Module_15/R_Analysis/M15_challenge")

library(dplyr)
MechaCar_mpg <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset

head(MechaCar_mpg)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg) #DELIVERABLE 1 STEP 5 generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_mpg)) # DELIVERABLE 1 STEP 6 generate summary statistics

Susp_coil <- read.csv('Suspension_Coil.csv',stringsAsFactors = F) #DELIVERABLE 2 STEP 2 read in dataset

head(Susp_coil)

total_summary <- Susp_coil %>% summarize(mean(PSI),median(PSI),var(PSI),sd(PSI),.groups = 'keep') # DELIVERABLE 2 STEP 3create summary table for PSI column

total_summary

lot_summary <- Susp_coil %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI),median(PSI),var(PSI),sd(PSI),.groups = 'keep') # DELIVERABLE 2 STEP 4 create summary table for PSI column grouped by Manufacturing_lot
