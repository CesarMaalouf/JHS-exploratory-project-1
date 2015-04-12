#Based on script Plot1.R
#addind a DateTime column to the file with only (2 days of February)
library(lubridate)
edf <- subset(edf,Date=='1/2/2007' | Date =='2/2/2007')
with(edf,plot(DateTime, Voltage, ,xlab="datetime",type="l"))
with(edf,plot(DateTime, Global_reactive_power, ,xlab="datetime",type="l"))
#Copy my plot to a PNG file
dev.copy(png, file = "Plot4.png")
# Closing the PNG device
dev.off()