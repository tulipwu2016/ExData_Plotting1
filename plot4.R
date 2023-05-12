#head(data,10)
#format date and time
data$Date <- as.Date(data$Date, format="%d/%m/%Y")
dateTime <- paste(data$Date, data$Time)
class(data$Date)
class(dateTime)
data$DateTime <- as.POSIXct(dateTime)
class(data$DateTime)
head(data,10)

