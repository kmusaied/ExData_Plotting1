plot2 <- function(runSetup=TRUE,export2Png = TRUE)
{
        source('setup.R')
        if(runSetup){
                setup()
        }
        
        
        # opening device 
        if (export2Png)
                png(filename="plot2.png")
        
                
        # printing plot
        plot( as.POSIXct(paste(x$Date, x$Time), format="%Y-%m-%d %H:%M:%S"), x$Global_active_power  
              , ylab = "Global Active Power (kilowatts)"  , xlab = "" ,
              type="l")

        # closing device 
        if (export2Png)
                dev.off()
}