getPowerData <- function() {
  startDate <- as.Date("2007-02-01")
  endDate <- as.Date("2007-02-02")
  powerData <- read.table("household_power_consumption.txt",header = T,sep = ";",stringsAsFactors = F, na.strings = "?")
  powerData$Time <- as.POSIXct(paste(powerData$Date, powerData$Time),format="%d/%m/%Y %H:%M:%S")
  powerData$Date <- as.Date(powerData$Date,format = "%d/%m/%Y")
  powerData <- powerData[powerData$Date >= startDate & powerData$Date <= endDate, ]
  powerData$Global_active_power <- as.numeric(powerData$Global_active_power)  
  powerData
}