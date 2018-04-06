salesdata <- read.table("sales.txt",skip = 2)
salesdata[1]
s1=((unlist(salesdata[1],use.names = FALSE))*(unlist(salesdata[7],use.names = FALSE)))-((unlist(salesdata[4],use.names = FALSE))*(unlist(salesdata[7],use.names = FALSE)))
s2=((unlist(salesdata[2],use.names = FALSE))*(unlist(salesdata[8],use.names = FALSE)))-((unlist(salesdata[5],use.names = FALSE))*(unlist(salesdata[8],use.names = FALSE)))
s3=((unlist(salesdata[3],use.names = FALSE))*(unlist(salesdata[9],use.names = FALSE)))-((unlist(salesdata[6],use.names = FALSE))*(unlist(salesdata[9],use.names = FALSE)))
bill <- matrix(c(s1,s2,s3),ncol=3,byrow=TRUE)
colnames(bill) <- c("state1","state2","state3")
rownames(bill) <- c("item1","item2","item3")
bill <- as.table(bill)
bill
write.table(bill, "bill.txt", sep="\t") 