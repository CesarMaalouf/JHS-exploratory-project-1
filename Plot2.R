#Based on script Plot1.R
#addind a DateTime column to the file with only (2 days of February)
library(lubridate)
edf$DateTime <- dmy_hms(paste(edf$Date, edf$Time))
#Setting my local Sys set local to English (to avoid displaying days in French)
Sys.setlocale("LC_TIME", "C")
#Plotting the graph
with(edf,plot(DateTime, Global_active_power, ylab="Global Active Power (kilowatts)",xlab="",type="l"))
#Copy my plot to a PNG file
dev.copy(png, file = "Plot2.png")
# Closing the PNG device
dev.off()