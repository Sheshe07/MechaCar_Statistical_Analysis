 library(tidyverse)
  mpg_data_table <- read.csv(file = 'MechaCar_mpg.csv', check.names=F,stringsAsFactors = T)
  View(mpg_data_table)
  lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_data_table) 
  summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle +  AWD, data=mpg_data_table))
  head(mpg_data_table) #The top 6 entry from the Data Set
  
  # Deliverable #2
  Suspension_Coil_Table <- read.csv(file = 'Suspension_Coil.csv', check.names=F,stringsAsFactors = F)
   View(Suspension_Coil_Table)
   total_summary <- Suspension_Coil_Table %>% summarize(MEAN =mean(PSI), MEDIAN=median(PSI),SD=sd(PSI), VARIANCE=var(PSI))
   total_summary
   lot_summary <- Suspension_Coil_Table %>%  group_by(Manufacturing_Lot) %>% summarize(MEAN =mean(PSI), MEDIAN=median(PSI),SD=sd(PSI), VARIANCE=var(PSI))
   lot_summary 
   