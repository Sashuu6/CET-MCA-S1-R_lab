month<-c(1:12)
sales<-c(105,135,120,105,90,120,145,140,100,80,100,110)
plot(month,sales,xlab = "Month",ylab = "Sales")
mov_avg<-sales
for(i in 1:10){
mov_avg[i+1]<-(sales[i]+sales[i+1]+sales[i+2])/3
}
mov_avg
lines.ts(mov_avg)
