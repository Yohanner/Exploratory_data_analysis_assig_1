#Plot 1
#Reading the data, subsetting to date of interest
data=read.table("C:/Yohannes/Coursera/Exploratory data analysis/data/household_power_consumption.txt",sep=";",header=TRUE, stringsAsFactors = FALSE)
data$Date=as.Date(data$Date, format="%d/%m/%Y")
data2=data[data$Date=='2007-02-01'|data$Date=='2007-02-02',]
data2$Global_active_power=as.numeric(data2$Global_active_power)

#Produce the graph
par(mfrow=c(1,1))
dev.copy(png,'C:/Yohannes/Coursera/Exploratory data analysis/Peer Assignment 1/plot1.png', width = 480, height = 480)
hist(data2$Global_active_power, xlab="Global Active Power (Kilowatts)",col="red",main="Global Active Power")
dev.off()

