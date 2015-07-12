##
## Exploratory Data Analysis - Project 1
## July 12, 2015
##
## Load the data...
source("load_data.R")
## Prep the output file as a R grahics device...
png(filename = "plot4.png", 
    width = 480, height = 480, 
    units = "px", bg = "transparent")
## Set up as two rows of two plots each row...
par(mfrow=c(2,2))  
## Plot 1 ...
plot(DataSub$Time, DataSub$Global_active_power, 
     type = "l", 
     xlab = "", ylab = "Global Active Power")
## Plot 2
plot(DataSub$Time, DataSub$Voltage, 
     type = "l", 
     xlab = "datetime", ylab = "Voltage")
## Plot 3
plot(DataSub$Time, DataSub$Sub_metering_1, 
     type = "l", col = "black", 
     xlab = "", ylab = "Energy sub metering")
lines(DataSub$Time, DataSub$Sub_metering_2, 
      type="l", col="red")
lines(DataSub$Time, DataSub$Sub_metering_3, 
      type="l", col="blue")
legend("topright", 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lwd=2, col=c("black", "red", "blue"))
## Plot 4
plot(DataSub$Time, DataSub$Global_reactive_power, 
     type = "l", 
     xlab = "datetime", ylab = "Global Reactive Power")
## Turn off the grahics output device...
dev.off()