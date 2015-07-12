##
## Exploratory Data Analysis - Project 1
## July 12, 2015
##
## Load the data...
source("load_data.R")
## Prep the output file as a R grahics device...
png(filename = "plot1.png", 
      width = 480, height = 480, 
      units = "px", bg = "transparent")
## Create a histogram from the first series....
hist(DataSub$Global_active_power, 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", 
     ylab = "Frequency", 
     col = "red")
## Turn off the grahics output device...
dev.off()
