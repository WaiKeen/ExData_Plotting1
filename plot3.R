#Import the raw data from "household_power_consumption.txt" located at the working directory.
#Create subset of the raw data based on the dates required.
#Convert Date & Time from raw data to class datetime
power <- read.table("household_power_consumption.txt", na.strings = "?", header = TRUE, sep=";")
powersubset <- power[power$Date %in% c("1/2/2007","2/2/2007"),]
datetime <- strptime(paste(powersubset$Date, powersubset$Time),format = "%d/%m/%Y %H:%M")

#Open PNG Device, create "plot1.png" with width & height at 480 pixels.
#Create Line Plot for Date&Time against Sub Metering with Legend
#Close the PNG file device
png("plot3.png",width = 480, height = 480)

plot(datetime,powersubset$Sub_metering_1,type = "l", xlab = "", ylab = "Energy sub metering", main = "")
lines(datetime,powersubset$Sub_metering_2,col = "red")
lines(datetime,powersubset$Sub_metering_3,col = "blue")
legend("topright",col=c("black","red","blue"), legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1)

dev.off()