##
## Exploratory Data Analysis - Project 1
## July 12, 2015
##
## Load the data...
source("load_data.R")
## Prep the output file as a R grahics device...
png(filename = "plot3.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
## Plot 3 - first series
plot(DataSub$Time, DataSub$Sub_metering_1, 
     type = "l", 
     col = "black", 
     xlab = "", 
     ylab = "Energy sub metering")
## Plot 3 - second series
lines(DataSub$Time, DataSub$Sub_metering_2, 
      type="l", 
      col="red")
## Plot 3 - third series
lines(DataSub$Time, DataSub$Sub_metering_3, 
      type="l", 
      col="blue")
## Legend creation and placement...
legend("topright", 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lwd=2, 
       col=c("black", "red", "blue"))
## Turn off the grahics output device...
dev.off()
