
## reading data 
x<-read.csv("household_power_consumption.txt",sep = ";")
## convert date column to date type
x$Date<- strptime(x$Date,format = "%d/%m/%Y")
## read rows in 2007-2-1
x2<-x[x$Date == "2007-2-1", ]
## read rows in 2007-2-2
x3<-x[x$Date == "2007-2-2", ]
## merging rows for two dats 
x<-merge(x2,x3,all = TRUE)
#remove temp vars
rm(x2,x3)
# cocatenate date and time in date column 
x$Date =  as.POSIXct(paste(x$Date, x$Time), format="%Y-%m-%d %H:%M:%S")
# opening device 
png(filename="plot3.png")
# printing plot
with(x,plot(x$Date, x$Sub_metering_1 , ylab = "Energy sub metering" , xlab = "" , type="n"))
with(subset(x, select =  Sub_metering_1),points(x$Date,x$Sub_metering_1 , col ="black" , type = "l"))
with(subset(x, select =  Sub_metering_2),points(x$Date,x$Sub_metering_2 , col ="red",type = "l"))
with(subset(x, select =  Sub_metering_3),points(x$Date,x$Sub_metering_3 , col ="black", type = "l"))
with(subset(x, select =  Sub_metering_3),points(x$Date,x$Sub_metering_3 , col ="blue", type = "l"))
legend("topright",pch = "_",cex = 0.9 ,  col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
# closing device 
dev.off()