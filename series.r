# x - (1/2)x^3 + (1/2)(3/4)x^5.....

n=as.integer(readline(prompt="Enter No of iterations and x:"))
x=scan(n=1)
sum=x
a=x*x
t=1

for(i in 2:(n-1))
{
  x=x*a
  t=-((2*n-1)/2*n)*t
  sum=sum+(x**t)
  
#  t=-((2*n-1)/2*n)*t
  
  
}

print(sum)

