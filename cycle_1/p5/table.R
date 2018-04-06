age<-sample(c("40-45","45-50","50-55","55-60"), size=1000, replace=TRUE)
age
bp<-sample(c("LOW","MED","HIGH"),size=1000, replace=TRUE)
bp
list<-data.frame(age,bp)
list
tab<-table(list)
tab
tab2<-prop.table(tab)
tab2
percent<-tab2*100
percent
percentage<-addmargins(percent)
percentage
sink("bpdetails.txt",split = 2)
cat("*******************************************************\n")
cat("***********percentage of age groups and BP*************\n")
cat("*******************************************************\n")
print(percentage)
cat("*******************************************************\n")
sink()