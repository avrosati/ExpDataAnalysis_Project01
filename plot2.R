##
## Exploratory Data Analysis - Project 1
## July 12, 2015
##
## Load the data...
source("load_data.R")
## Prep the output file as a R grahics device...
png(filename = "plot2.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
## Create a scatterplot of the first series...
plot(DataSub$Time, 
     DataSub$Global_active_power, 
     type = "l", 
     xlab = "", 
     ylab = "Global Active Power (kilowatts)")
## Turn off the grahics output device...
dev.off()
