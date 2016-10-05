
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
#convert column to char
x$Global_active_power <- as.character(x5$Global_active_power)
#convert column to number 
x$Global_active_power <- as.numeric(x5$Global_active_power)
# opening device 
png(filename="plot1.png")
# printing plot
hist(  x$Global_active_power, col = "red" , main = "Global Active Power" , 
       xlab = "Global Active Power (kilowatts)")
# closing device 
dev.off()