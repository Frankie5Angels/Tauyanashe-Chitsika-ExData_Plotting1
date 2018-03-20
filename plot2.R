data_file0 <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE, dec = ".")



data_file1 <- subset(data_file0, Date %in% c("1/2/2007","2/2/2007"))
head(data_file1)
class(data_file1$Date)



datetime <- strptime(paste(data_file1$Date, data_file1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
x0 <- as.numeric(data_file1$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, x0, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()


