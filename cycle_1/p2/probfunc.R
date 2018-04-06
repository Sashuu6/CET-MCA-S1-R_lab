t=c(1:6)
a=sample(t,size = 1000,replace = TRUE,prob = NULL)
prob_fun=table(a)
print(prob_fun)
prob_fun=prob_fun/1000
print(prob_fun)
plot(addmargins(prob_fun))
sum(prob_fun)