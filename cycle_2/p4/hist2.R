#Use simulation to find the equation of the density function of 
# the sum of two independent random variables, both uniformly distributed 
# between 0 and 1
# Extend the program to find the distribution of the 
#sum of n i.i.d. U(0,1) random variables and demonstrate Central limit theorem
# using appropriate plots.
##################
distsum=function(n){
  sumrv=rep(0,100000)
  # sum of n random variables
  for (i in 1:n){sumrv=sumrv+runif(100000)}
  return(sumrv)
}
par(mfrow=c(2,2))
hist(distsum(2),probability = T,breaks = 100)# sum of 2 rv
hist(distsum(5),probability = T,breaks = 100)
hist(distsum(10),probability = T,breaks = 100)
hist(distsum(20),probability = T,breaks = 100)