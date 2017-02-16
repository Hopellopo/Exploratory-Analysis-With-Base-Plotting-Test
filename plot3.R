plot3 <- function(){
  options(warn=-1)
  load("RelevantData.Rdata") #Called d
  d["DateTime"] <- paste(as.Date(d$Date), d$Time)
  plot(as.POSIXlt(d$DateTime), as.numeric(d$Sub_metering_1), type = "l", xlab = "", ylab = "Energy sub Metering")
  box()
  lines(as.POSIXlt(d$DateTime), d$Sub_metering_2, type = "l", col = "red")
  lines(as.POSIXlt(d$DateTime), d$Sub_metering_3, type = "l", col = "blue")
}