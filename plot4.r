
## reading the file

dat1 <- read.table("data1.txt", sep= ";")

##  plotting

png("plot4.png",width = 480,height = 480)
par(mfrow =c(2,2),mar=c(4,4,2,1), oma=c(0,0,2,0))
with(data1,{
   plot(Time,Global_active_power,type="l", xlab="Th  Fri   Sat",ylab="GlobalActive Power(Kilowatts)")  

   plot(Time,Voltage,type="l",xlab="datetime",ylab="Voltage")

   plot(Time,Sub_metering_1,col ="black", xlab=" Thu  Fri  Sat", ylab= "Energy Sub Metering", type="l")
   points(Time,Sub_metering_2, col="red", type="l")
   points(Time,Sub_metering_3, col="blue", type="l")
   legend("topright", lty =c(1,1,1), col=c("black","red","blue"),legend =c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

   plot(Time,Global_active_power, type ="l",xlab="datetime",ylab="Global_active_power")

})
dev.off()
