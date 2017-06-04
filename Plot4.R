##Coursera JHUniv Data Science Course4
##Exploratory Data Anlysis Course Project-1
##Plot4.R

Sys.setlocale("LC_TIME", "English")

File<-"./household_power_consumption.txt"
Data4<-read.table(File,header=T,sep=";",na.strings="?",stringsAsFactors=F)
Data4<-subset(Data4,Date %in% c("1/2/2007","2/2/2007"))

Date4<-Data4$Date
Time4<-Data4$Time
Time<-strptime(paste(Date4,Time3,sep=" "), format="%d/%m/%Y %H:%M:%S",tz="Europe/Paris")


png(filename="Plot4.png",width=480,height=480)
par(mfrow=c(2,2))

##1st plot
ActivePower<-na.omit(as.numeric(Data4$Global_active_power))
plot(Time,ActivePower,type="l",main="",
     xlab="",ylab="Global Active Power")
##2nd plot
Voltage<-na.omit(as.numeric(Data4$Voltage))
plot(Time,Voltage,type="l",main="",
     xlab="datetime",ylab="Voltage")
##3rd plot
En1<-na.omit(as.numeric(Data3$Sub_metering_1))
En2<-na.omit(as.numeric(Data3$Sub_metering_2))
En3<-na.omit(as.numeric(Data3$Sub_metering_3))
Lab3<-colnames(Data4[,7:9])
cols=c("black","red","blue")

plot(Time,En1,type="l",col="black",main="",
     xlab="",ylab="Energy sub metering")
lines(Time,En2,type="l",col="red")
lines(Time,En3,type="l",col="blue")
legend("topright",legend=Lab3,col=cols,lty=1,lwd=0.8,cex=0.9,bty="n")

##4th plot
ReactiveP<-na.omit(as.numeric(Data4$Global_reactive_power))
plot(Time,ReactiveP,type="l",main="",
     xlab="datetime",ylab="Global_reactive_power")

dev.off()
