## reading the file

dat1 <- read.table("data1.txt", sep= ";")

##  plotting

png("plot1.png", width = 480, height=480)
with(data1, hist(Global_active_power, ylab="Frequency",xlab="Global active Power (Kilowatts)", col="red"))
title(main="Global Active Power")
dev.off()

