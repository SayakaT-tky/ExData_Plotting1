##Coursera JHUniv Data Science Course4
##Exploratory Data Anlysis Course Project-1
##Plot2.R

Sys.setlocale("LC_TIME", "English")

File<-"./household_power_consumption.txt"
Data2<-read.table(File,header=T,sep=";",na.strings="?",stringsAsFactors=F)
Data2<-subset(Data2,Date %in% c("1/2/2007","2/2/2007"))

ActivePower<-na.omit(as.numeric(Data2$Global_active_power))
Date2<-Data2$Date
Time2<-Data2$Time
Time<-strptime(paste(Date2,Time2,sep=" "), format="%d/%m/%Y %H:%M:%S",tz="Europe/Paris")

png(filename="Plot2.png",width=480,height=480)
plot(Time,ActivePower,type="l",main="",
            xlab="",ylab="Global Active Power (kilowatts)")
dev.off()


