#Import the raw data from "household_power_consumption.txt" located at the working directory.
#Create subset of the raw data based on the dates required.
power <- read.table("household_power_consumption.txt", na.strings = "?", header = TRUE, sep=";")
powersubset <- power[power$Date %in% c("1/2/2007","2/2/2007"),]

#Open PNG Device, create "plot1.png" with width & height at 480 pixels.
#Create Histogram for Global Active Power from subset data of 1st & 2nd Feb 2007.
#Close the PNG file device
png("plot1.png",width = 480, height = 480)

hist(powersubset$Global_active_power,col="Red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")

dev.off()