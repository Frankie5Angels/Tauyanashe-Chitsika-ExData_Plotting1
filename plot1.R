data_file0 <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE, dec = ".")



data_file1 <- subset(data_file0, Date %in% c("1/2/2007","2/2/2007"))
head(data_file1)
class(data_file1$Date)



data_file1$Date <- as.Date(data_file1$Date, "%d%m%Y")
x0 <- data_file1$Global_active_power
png(file = "plot1.png", width=480, height=480)
hist(x0, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()

