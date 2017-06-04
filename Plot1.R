##Coursera JHUniv Data Science Course4
##Exploratory Data Anlysis Course Project-1
##Plot1.R

Sys.setlocale("LC_TIME", "English")

File<-"./household_power_consumption.txt"
Data1<-read.table(File,header=T,sep=";",na.strings="?",stringsAsFactors=F)
Data1<-subset(Data1,Date %in% c("1/2/2007","2/2/2007"))
ActivePower<-na.omit(as.numeric(Data1$Global_active_power))
png(filename="Plot1.png",width=480,height=480)
hist1<-hist(ActivePower,col="red",main="Global Active Power",
            xlab="Global Active Power (kilowatts)",ylab="Frequency")
dev.off()


