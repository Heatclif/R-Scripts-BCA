#Question No.1

primest <- function(n){
  p <- 2:n
  i <- 1
  while (p[i] <= sqrt(n)) {
    p <-  p[p %% p[i] != 0 | p==p[i]]
    i <- i+1
  }
  p
}

isprime=function(n){
  
  c=0
  
  for(i in 2:sqrt(n))
  {
    if(n%%i==0)
      return(0)
  }
  
  if(c==0)
    return(1)
}


lim=as.double(readline(prompt = "Enter the range :")) 

p=primest(lim)

sum=0

check=NULL

for(i in p)
{
  check=append(check,i)
  sum=sum+i
  
  if(sum>lim)                           
    break
  
  if(isprime(sum)==1)
  {
    for(a in 1:length(check)){
      cat(check[a])
      if(a!=length(check))
        cat("+")
    }
    cat("=",sum,"\n")
  }
}
