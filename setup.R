setup <- function()
{
        ## reading data 
        print("loading Data")
        x<<-read.csv("household_power_consumption.txt",sep = ";")
        print("finish loading Data")
        ## convert date column to date type
        x$Date<<- strptime(x$Date,format = "%d/%m/%Y")
        ## read rows in 2007-2-1
        x2<-x[x$Date == "2007-2-1", ]
        ## read rows in 2007-2-2
        x3<-x[x$Date == "2007-2-2", ]
        ## merging rows for two dats 
        x<<-merge(x2,x3,all = TRUE)
        #remove temp vars
        rm(x2,x3)
        # cocatenate date and time in date column 
        x$Date <-  as.POSIXct(paste(x$Date, x$Time), format="%Y-%m-%d %H:%M:%S")
        #convert column to char Global_active_power
        x$Global_active_power <- as.character(x$Global_active_power)
        #convert column to number Global_active_power
        x$Global_active_power <- as.numeric(x$Global_active_power)
        #convert column to char Voltage
        x$Voltage <- as.character(x$Voltage)
        #convert column to number Voltage
        x$Voltage <- as.numeric(x$Voltage)
        #convert column to char Global_reactive_power
        x$Global_reactive_power <- as.character(x$Global_reactive_power)
        #convert column to number Global_reactive_power
        x$Global_reactive_power <- as.numeric(x$Global_reactive_power)
        x<<- x
}

