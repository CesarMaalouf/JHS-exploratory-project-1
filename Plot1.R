power <- read.csv("household_power_consumption.csv",header = TRUE,sep=";")
#subsetting the file by filtering only the 2 dates (1/2/2007" , "2/2/2007")
nedf <-subset(power, Date == c("1/2/2007" , "2/2/2007"))
#Plotting the histogram
with(edf,hist(Global_active_power,main = "Global Active Power",xlab="Global Active Power (kilowatts)",col="red" ))
#Copy my plot to a PNG file
dev.copy(png, file = "Plot1.png")
# Closing the PNG device
dev.off()