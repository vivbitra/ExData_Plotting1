
# Read Data
data<-read.table("household_power_consumption.txt", sep = ";", header = TRUE,na.strings = "?")
# subsetting the data
data1<-data[data$Date %in% c("1/2/2007","2/2/2007"),]

# Creating PNG plot using Histogram function
png("plot1.png", width=480, height=480)
hist(data1$Global_active_power,col = "red",main = "Global Active Power",xlab = "Global active Power (Kilowatts)",ylab = "frequency")
dev.off()
