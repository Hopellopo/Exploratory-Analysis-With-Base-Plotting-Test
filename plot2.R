plot2 <- function(){
  options(warn=-1)
  #2007-02-01 was a Thursday. 2007-02-02 a Friday, and 2007-02-03 a Saturday.
  load("RelevantData.Rdata") #Called d
  d["DateTime"] <- paste(as.Date(d$Date), d$Time)
  plot(as.POSIXlt(d$DateTime), as.numeric(d$Global_active_power), type = "l", main = "Plot 2", ann = T, xlab = "",
       ylab = "Global Active Power (kilowatts)")
  box()
}