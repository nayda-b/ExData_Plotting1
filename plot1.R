#Reading the Table
dataset=read.table("~/household_power_consumption.txt",na.strings="?",header=TRUE, sep=";")
#Convert the Date to R Date class
dataset$Date<-as.Date(dataset$Date,"%d/%m/%Y")
#Subsetting the dataset
sdataset<-subset(dataset, Date>="2007-02-01" & Date<="2007-02-02")
#Creating the plot
png("plot1.png")
hist(sdataset$Global_active_power, xlab="Global Active Power (kilowatts)", ylab="Frecuency", main="Global Active Power", col = "red")
dev.off()