# showing that binomial B(n,p) approaches Poisson(n*p) as n increases
##################
p=0.1
par(mfrow=c(3,3))
n=5
plot(0:n,dbinom(0:n,n,p),type = "h")
plot(0:n,dpois(0:n,n*p),type = "h")
n=10
plot(0:n,dbinom(0:n,n,p),type = "h")
plot(0:n,dpois(0:n,n*p),type = "h")
n=20
plot(0:n,dbinom(0:n,n,p),type = "h")
plot(0:n,dpois(0:n,n*p),type = "h")
n=50
plot(0:n,dbinom(0:n,n,p),type = "h")
plot(0:n,dpois(0:n,n*p),type = "h")