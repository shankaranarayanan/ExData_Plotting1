source("getData.R")
powerData <- getPowerData()
png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))
#plot1
with(powerData, plot(Time, Global_active_power,type ="l", ylab = "Global Active Power", xlab = ""))
#plot2
with(powerData, plot(Time, Voltage,type ="l", ylab = "Voltage", xlab = "datetime"))
#plot3
with(powerData, plot(Time, Sub_metering_1, type = "l", ylab = "Energy sub metering",xlab = ""))
with(powerData, lines(Time,Sub_metering_2, col = "Red"))
with(powerData, lines(Time,Sub_metering_3, col = "Blue"))
legend("topright",lty = 5, col=c("Black","Red","Blue"),
       legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),cex = 0.7,bty = "n")
#plot4
with(powerData, plot(Time, Global_reactive_power,type ="l", xlab = "datetime"))
dev.off()