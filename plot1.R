# Author : Arda OZTURK
# Date   : 01/05/2016

# Assignment 1 
# Plot 1

# download an unzip 'household_power_consumption.txt' file
# Under your rott dir in a folder called 'data' 

dataFile <- "./data/household_power_consumption.txt"

# Read file
# First row includes haeders so set HEADER=TRUE

data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# Sub set requested data only

plotData <- subset(data, (Date == "1/2/2007" | Date == "2/2/2007"))

# alterlative way to subset
# plotData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# You cab check the date before moving on 
# str(plotData)

# Convert related data into numerci form
# **hist function will require numeric data

globalActivePower <- as.numeric(plotData$Global_active_power)

# Create Histogram on Screen Device and see the results

hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

# Create a png file with given specs (480x480)

dev.copy(png, file = "plot1.png", width=480, height=480)

# Close the file device to finish with the file

dev.off()
