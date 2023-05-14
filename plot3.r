
## reading the file

dat1 <- read.table("data1.txt", sep= ";")

##  plotting

png("plot3.png", width = 480, height=480)
with(data1,plot(Time,Sub_metering_1,col ="black", xlab=" Thu  Fri  Sat", ylab= "Energy Sub Metering", type="l"))
with(data1,points(Time,Sub_metering_2, col="red", type="l"))
with(data1,points(Time,Sub_metering_3, col="blue", type="l"))
legend("topright", lty =c(1,1,1), col=c("black","red","blue"),legend =c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
