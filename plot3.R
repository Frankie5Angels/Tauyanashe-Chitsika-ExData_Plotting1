data_file0 <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE, dec = ".")
data_file1 <- subset(data_file0, Date %in% c("1/2/2007","2/2/2007"))
datetime <- strptime(paste(data_file1$Date, data_file1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 




x1 <- as.numeric(data_file1$Sub_metering_1)
x2 <- as.numeric(data_file1$Sub_metering_2)
x3 <- as.numeric(data_file1$Sub_metering_3)




png(file = "plot3.png", width = 480, height = 480)
plot(datetime, x1, type = "l", col = "black", ylab = "Energy sub metering", xlab="")
lines(datetime, x2, type ="l", col = "red")
lines(datetime, x3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()