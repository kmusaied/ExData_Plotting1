source('setup.R')
source('plot1.R')
source('plot2.R')
source('plot3.R')
source('plot4.R')

testsetup <- function()
{
        setup()
        
}

testplot1 <- function()
{
        dev.new()
        plot1(FALSE, FALSE)
        
}
testplot2 <- function()
{
        dev.new()
        plot2(FALSE, FALSE)
        
}
testplot3 <- function()
{
        dev.new()
        plot3(FALSE, FALSE)
}
testplot4 <- function()
{
        dev.new()
        plot4(FALSE, FALSE)
}


