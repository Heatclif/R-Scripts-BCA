#Question No.1  (the numbers in LHS will be within the limit)


isprime=function(n){
  
  c=0
  
  for(i in 2:sqrt(n))
  {
    if(n%%i==0)
      return(FALSE)
  }
  
  if(c==0)
    return(TRUE)
}

cat("Note:Large ranges are not suitable to print. Use 100 for convinience.")
lim=as.double(readline(prompt = "Enter the limit :")) 

p=2:lim

s=0

#Generating required prime number and storing it in p
for(i in 2:as.integer(sqrt(lim)))
{
  p=p[p%%i!=0 | p==i]
}

v=NULL

for(i in p)
{
  v=append(v,i)
  s=s+i
  
  if(isprime(s))
  {
    for(a in 1:length(v)){
      cat(v[a])
      if(a!=length(v))
        cat("+")
    }
    cat("=",s,"\n")
  }
}
