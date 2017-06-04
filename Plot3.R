##Coursera JHUniv Data Science Course4
##Exploratory Data Anlysis Course Project-1
##Plot3.R

Sys.setlocale("LC_TIME", "English")

File<-"./household_power_consumption.txt"
Data3<-read.table(File,header=T,sep=";",na.strings="?",stringsAsFactors=F)
Data3<-subset(Data3,Date %in% c("1/2/2007","2/2/2007"))[,-c(3:6)]

En1<-na.omit(as.numeric(Data3$Sub_metering_1))
En2<-na.omit(as.numeric(Data3$Sub_metering_2))
En3<-na.omit(as.numeric(Data3$Sub_metering_3))
Date3<-Data3$Date
Time3<-Data3$Time
Time<-strptime(paste(Date3,Time3,sep=" "), format="%d/%m/%Y %H:%M:%S",tz="Europe/Paris")
Lab3<-colnames(Data3[,3:5])
cols=c("black","red","blue")

png(filename="Plot3.png",width=480,height=480)

plot(Time,En1,type="l",col="black",main="",
             xlab="",ylab="Energy sub metering")
lines(Time,En2,type="l",col="red")
lines(Time,En3,type="l",col="blue")
legend("topright",legend=Lab3,col=cols,lty=1,lwd=1.5)

dev.off()


