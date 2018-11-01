{
prime=function(n)
{ 
  v=c(2,3)
  q=2;
  for(i in 4:n)
  {flag=0
    for(x in 1:length(v))
    {w=v[x]
      if(i%%w==0)
        {flag=1;
        break
      }
    }
    if(flag==0){
      v[q+1]=i
      q=q+1
    }
  }
  #print(v)
  sum=0
  for(i in 2:length(v))
  {
    for(k in 1:i)
    {
      sum=sum+v[k];
      
    }
    
    if(sum %in% v){
      cat("2 ")
      for(j in 2:i){
        cat("+ ",v[j]," ")
      }
      cat("=",sum)
      cat("\n")
    }
    sum=0;
    
  }
}
r=as.integer(readline(prompt = "enter n"))
prime(r)
}

