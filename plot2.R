
# Read Data
data<-read.table("household_power_consumption.txt", sep = ";", header = TRUE,na.strings = "?")
# subsetting the data
data1<-data[data$Date %in% c("1/2/2007","2/2/2007"),]

#convert date and time variables
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data1$Date), data1$Time)
data1$Datetime <- as.POSIXct(datetime)

# Creating PNG plot
png("plot2.png", width=480, height=480)
plot(data1$Global_active_power~data1$Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
dev.off()



