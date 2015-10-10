#Plot 2
#Reading the data, subsetting to date of interest and create date/time
data=read.table("C:/Yohannes/Coursera/Exploratory data analysis/data/household_power_consumption.txt",sep=";",header=TRUE, stringsAsFactors = FALSE)
data$Date=as.Date(data$Date, format="%d/%m/%Y")
data2=data[data$Date=='2007-02-01'|data$Date=='2007-02-02',]
data2$date_time <- with(data2, as.POSIXct(paste(Date, Time), format="%Y-%m-%d %H:%M"))


#Produce the graph
par(mfrow=c(1,1))
plot(data2$date_time, data2$Global_active_power, type="l", xlab="", ylab="Global Active Power (Kilowatts)")
dev.copy(png,'C:/Yohannes/Coursera/Exploratory data analysis/Peer Assignment 1/plot2.png', width = 480, height = 480)
dev.off()

