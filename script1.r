## First in the Working Directory you have to decompress the file
library(lubridate)
data <- read.table("household_power_consumption.txt",header=TRUE, sep= ";",na.strings="?")

## format as date the colum date and format as time the colum "Time"

data[,1] <-as.Date(data[,1], format = "%d/%m/%Y")
data[,2] <- hms(data[,2])


fecha <- "13/05/2023 22:45:21"
marca_tiempo <- strptime(fecha, format = "%d/%m/%Y %H:%M:%S")



## split the data into the dates range that we are using for thios lab
## tuios new data set is "data1"

data1 <-data[data$Date >= as.Date("2007-02-01") & data$Date <= as.Date("2007-02-02"), ]

## write the data in a text file to be use in the following scripts

write.csv(data1, file ="data1.txt")
