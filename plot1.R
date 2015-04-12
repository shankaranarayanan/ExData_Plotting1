source("getData.R")
powerData <- getPowerData()
png("plot1.png", width = 480, height = 480)
hist(powerData$Global_active_power,col = "RED",ylab = "Frequency",
     xlab = "Global Active Power(kilowatts)",main = "Global Active Power")
dev.off()