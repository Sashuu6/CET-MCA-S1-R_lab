p<-rnorm(1000,mean=20,sd=4)
mydata=sample(p,100,FALSE)
sm=mean(mydata)
gm=prod(mydata)^0.01
hm=((0.01)*(1/sum(mydata))^-1)
rms=sqrt(0.01*sum(mydata^2))
print("sample mean is:")
sm
print("geometric mean is:")
gm
print("harmonic mean is:")
hm
print("root mean square is:")
rms
