source('plot3.R')
plot4 <- function(runSetup=TRUE,export2Png = TRUE)
{
        source('setup.R')
        if(runSetup){
                setup()
        }
        
        
        # opening device 
        if (export2Png)
                png(filename="plot4.png")
        
        #setup layout for 4 plots
        par( mfrow = c(1,1) , mfcol = c(2,2), mex=1  )
        #plot 1-4
        plot(x$Date, x$Global_active_power , type = "l" , ylab = "Global Active Power" , xlab = "")
        #plot 2-4
        plot3(FALSE,FALSE)
        #plot 3-4
        plot(x$Date, as.numeric( x$Voltage ) , type ="l" ,ylab = "Voltage" , xlab = "datetime" )
        #plot 4-4
        plot(x$Date, x$Global_reactive_power , type="l", ylab = "Global reactive power", xlab = "datetime")
        
        # opening device 
        if (export2Png)
                dev.off()
}