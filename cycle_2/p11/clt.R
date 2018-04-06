rn1<-runif(1000,min=0,max=1)
par(mfrow=c(2,3))
k=c(1:1000)
mk=cumsum(rn1)/k
sq=cumsum(rn1*rn1)/k
vk=sq-(mk*mk)
plot(k,mk,xlab="k",ylab="mk",main = "k vs mk")
plot(k,vk,xlab="k",ylab="vk",main="k vs vk")

rn2<-rexp(rn1,2)
mk1=cumsum(rn2)/k
sq1=cumsum(rn2*rn2)/k
vk1=sq1-(mk1*mk1)
plot(k,mk1,xlab="k",ylab="mk",main = "k vs mk")
plot(k,vk1,xlab="k",ylab="vk",main="k vs vk")

