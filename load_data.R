##
## LOAD_DATA
##
## This function loads the Human Power Consumption large dataset.
filename <- "./sample_data/household_power_consumption.txt"


full_data_set <- read.table(filename, 
                            header=TRUE, 
                            sep=";", 
                            colClasses=c("character", "character", rep("numeric",7)), 
                            na="?")
full_data_set$Time <- strptime(paste(full_data_set$Date, full_data_set$Time), "%d/%m/%Y %H:%M:%S")
full_data_set$Date <- as.Date(full_data_set$Date, "%d/%m/%Y")
ff <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
DataSub <- subset(full_data_set, Date %in% ff)
## Here I test for the size of the full data set; it should be 2075259 rows by 9 columns
dim(full_data_set) 
## delete full data set to save RAM
rm(full_data_set)
## Test dimensions of the final subset; should be 2880 rows by 10 columns
dim(DataSub)
