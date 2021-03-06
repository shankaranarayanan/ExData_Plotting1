source("getData.R")
powerData <- getPowerData()
png("plot3.png", width = 480, height = 480)
with(powerData, plot(Time, Sub_metering_1, type = "l", ylab = "Energy sub metering",xlab = ""))
with(powerData, lines(Time,Sub_metering_2, col = "Red"))
with(powerData, lines(Time,Sub_metering_3, col = "Blue"))
legend("topright",lty = 5, col=c("Black","Red","Blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()