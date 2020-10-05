setwd("C:/Users/PratikSheth/Desktop/JENISA/Coursera/Exploratory Data Analysis")
data <- read.csv("C:/Users/PratikSheth/Desktop/JENISA/Coursera/Exploratory Data Analysis/household_power_consumption.txt",nrows = 2075259, sep = ";", na.strings = "?", check.names=F, 
                   +                  stringsAsFactors=F, comment.char="", quote='\"' )
data1 <- subset(data, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
hist(data1$Global_active_power, main="Global Active Power", 
       +      xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()