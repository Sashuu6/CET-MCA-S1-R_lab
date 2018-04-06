height_x=c(151,174,138,186,128,136,179,163,152,131)
weight_y=c(63,81,56,91,47,57,76,72,62,48)
relation <- lm(weight_y~height_x)
summary(relation)
resid(relation)
predict(relation)
a=data.frame(height_x=170)
b=data.frame(height_x=180)
result_a=predict(relation,a)
result_b=predict(relation,b)
result_a
result_b
plot(weight_y,height_x,main="Scatterplot of the data along with the regression line",abline(lm(height_x ~ weight_y)))