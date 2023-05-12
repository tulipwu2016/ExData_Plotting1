#head(data,10)
#format date and time
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
dateTime <- paste(data$Date, data$Time)
class(data$Date)
class(dateTime)
data$DateTime <- as.POSIXct(dateTime)
class(data$DateTime)
head(data,10)

#plot2
plot(data$Global_active_power~data$DateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
