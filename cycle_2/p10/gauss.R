population=rnorm(100,mean=3,sd=1)
print(population)
sampl=sample(population)
print(sampl)
mean(sampl)
sm=NULL
for(i in 10:100)
{
  result=sample(population,i,FALSE)
  sm=c(sm,mean(result))
}
plot(c(10:100),sm,type="l")