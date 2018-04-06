price=as.data.frame(read.table(file="price.txt",skip=1))
price
mean=apply(price[2:4],2,mean)
mean
sd=apply(price[2:4],2,sd)
sd
qt=apply(price[2:4],2,quantile)
qt
iqr=apply(price[2:4],2,IQR)
iqr
qd=iqr/2
qd
price_new<-rbind(price[2:4],mean,sd,qt,qd)
price_new
sink("price_details.txt",split = 2)
cat("***********************************\n")
cat("********rate of items**************\n")
cat("***********************************\n")
print(price_new)
cat("***********************************\n")
sink()
par(mfrow=c(2,2))
plot.ts(price[2:4])
plot.ts(price[2])
plot.ts(price[3])
plot.ts(price[4])