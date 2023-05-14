## reading the file

dat1 <- read.table("data1.txt", sep= ";")

##  plotting

png("plot2.png", width = 480, height=480)
with(data1,plot(Time,Global_active_power,type="l", xlab="Th  Fri   Sat",ylab="GlobalActive Power(Kilowatts)"))
dev.off()
