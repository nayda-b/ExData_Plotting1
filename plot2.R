#Reading the Table
dataset=read.table("~/household_power_consumption.txt",na.strings="?",header=TRUE, sep=";")
#Convert the Date to R Date class
dataset$Date<-as.Date(dataset$Date,"%d/%m/%Y")
#Subsetting the dataset for only 2 dates
sdataset<-subset(dataset, Date>="2007-02-01" & Date<="2007-02-02")
#Creating the plot
png("plot2.png")
plot(sdataset$Global_active_power, type="l")
dev.off()