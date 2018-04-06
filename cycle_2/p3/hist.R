
data=runif(1000,min = 0,max = 1)
n=c(20,10,50,2)

myfunction=function(n)
{
  mydata=sample(data,n,F)
  m<<-mean(mydata)
}
par(mfrow=c(2,2))
for(i in n){
  y=NULL
  for(j in 1:1000) {
    myfunction(i)
    y=c(y,m)
  }
  
  hist(y)
  
}

