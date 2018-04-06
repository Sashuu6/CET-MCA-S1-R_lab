fourier<-function(limit,x)
{
  sum_sine<-0
  for(i in seq(from=1,b=2,length.out = limit))
  {
    sum_sine<-sum_sine+sin(x*i)/i
  }
  sum_sine<- pi/2+2*sum_sine
  return(sum_sine)
}
x1=seq(from=-4,to=4,by=.1)
mfrow<-0
par(mfrow=c(2,2))
plot(x1,fourier(3,x1),type = "l",main="plot of n=3",ylab="s-3(x1)")
plot(x1,fourier(10,x1),type = "l",main="plot of n=10",ylab="s-10(x1)")
plot(x1,fourier(20,x1),type = "l",main="plot of n=20",ylab="s-20(x1)")
plot(x1,fourier(50,x1),type = "l",main="plot of n=50",ylab="s-50(x1)")