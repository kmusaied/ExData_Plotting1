plot1 <- function(runSetup=TRUE,export2Png = TRUE)
{
        source('setup.R')
        if(runSetup){
                setup()
        }
        # opening device 
        if (export2Png)
                png(filename="plot3.png")
        # printing plot
        with(x,plot(x$Date, x$Sub_metering_1 , ylab = "Energy sub metering" , xlab = "" , type="n"))
        with(subset(x, select =  Sub_metering_1),points(x$Date,x$Sub_metering_1 , col ="black" , type = "l"))
        with(subset(x, select =  Sub_metering_2),points(x$Date,x$Sub_metering_2 , col ="red",type = "l"))
        with(subset(x, select =  Sub_metering_3),points(x$Date,x$Sub_metering_3 , col ="black", type = "l"))
        with(subset(x, select =  Sub_metering_3),points(x$Date,x$Sub_metering_3 , col ="blue", type = "l"))
        legend("topright",pch = "_",cex = 0.9 ,  col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
        # closing device 
        if (export2Png)
                dev.off()
}