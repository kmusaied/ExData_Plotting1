plot4 <- function(runSetup=TRUE,export2Png = TRUE)
{
        par( mfrow = c(1,1) , mfcol = c(2,2) )
        with(x,{
                plot(x$Date, x$Global_active_power , type = "l")
                plot(x$Date, as.numeric( x$Voltage ) , type ="l")
                plot(x$Date, x$Global_active_power)
                plot(x$Date, x$Global_active_power)
                
        })
}