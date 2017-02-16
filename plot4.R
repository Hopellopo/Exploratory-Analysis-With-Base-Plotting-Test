plot4 <- function(){
  options(warn=-1)
  load("RelevantData.Rdata") #Called d
  source('C:/Users/jloum_000/Desktop/Data Analysis Test/plot2.R')
  source('C:/Users/jloum_000/Desktop/Data Analysis Test/plot3.R')
  d["DateTime"] <- paste(as.Date(d$Date), d$Time)
  par(mfrow=c(2, 2))
  plot2()
  plot(as.POSIXlt(d$DateTime), as.numeric(d$Voltage), type = "l", main = "Plot 2", ann = T, xlab = "")
  plot3()
  plot(as.POSIXlt(d$DateTime), as.numeric(d$Global_reactive_power), type = "l", main = "Plot 2", ann = T, xlab = "")
}