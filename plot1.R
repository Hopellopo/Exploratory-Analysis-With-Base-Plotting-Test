plot1 <- function(){
  options(warn=-1)
  load("RelevantData.Rdata") #Called d
  hist(as.numeric(d$Global_active_power), main = "Global Active Power", col = "red",
       xlab = "Global Active Power (kilowatts)")
}