x<-read.table("pois.dat")
tablex<-table(x)
tablex
mean(as.matrix(x))
er<-dpois(0:6,mean(as.matrix(x)))
er
er=er*c(0:6)
er
barplot(er,sub="theoretical frequencies",names.arg=tablex )