plot1 <- function(runSetup=TRUE,export2Png = TRUE)
{
        source('setup.R')
        if(runSetup){
                setup()
        }
        # opening device 
        if (export2Png)
                png(filename="plot1.png")

        # printing plot
        hist(  x$Global_active_power, col = "red" , main = "Global Active Power" , 
               xlab = "Global Active Power (kilowatts)")
        # closing device 
        if (export2Png)
                dev.off()
}