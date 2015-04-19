#Based on script Plot1.R
#addind a DateTime column to the file with only (2 days of February)
library(lubridate)
edf <- subset(edf,Date=='1/2/2007' | Date =='2/2/2007')
edf$DateTime <- dmy_hms(paste(edf$Date, edf$Time))
#Setting my local Sys set local to English (to avoid displaying days in French)
Sys.setlocale("LC_TIME", "C")

#Copy my plot to a PNG file
dev.copy(png, file = "Plot3.png")

#Plotting the graph

plot(edf$DateTime, edf$Sub_metering_1, ylab="Energy sub metering",xlab="",col='Black',type = "l")
lines(edf$DateTime,edf$Sub_metering_2, col = 'Red')
lines(edf$DateTime,edf$Sub_metering_3, col = 'Blue')
legend(x = 'topright',lwd = 1,col = c('Black','Red','Blue'),
       legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))
par(adj= 0.5)


# Closing the PNG device
dev.off()