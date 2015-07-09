#Import the raw data from "household_power_consumption.txt" located at the working directory.
#Create subset of the raw data based on the dates required.
#Convert Date & Time from raw data to class datetime
power <- read.table("household_power_consumption.txt", na.strings = "?", header = TRUE, sep=";")
powersubset <- power[power$Date %in% c("1/2/2007","2/2/2007"),]
datetime <- strptime(paste(powersubset$Date, powersubset$Time),format = "%d/%m/%Y %H:%M")

#Open PNG Device, create "plot1.png" with width & height at 480 pixels.
#Create Line Plot for Date&Time against Global Active Power from subset data of 1st & 2nd Feb 2007 agains
#Close the PNG file device
png("plot2.png",width = 480, height = 480)

plot(datetime,powersubset$Global_active_power,type = "l", xlab = "", ylab = "Global Active Power (kilowatts)", main = "")

dev.off()