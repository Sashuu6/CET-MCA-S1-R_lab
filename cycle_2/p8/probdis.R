x=runif(10000,min=0,max=1)
print(x)
y=round(x)
print(y)
z=x-y
print(z)
hist(z,main="Z = X − Y")