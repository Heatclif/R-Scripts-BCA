
  i=1
  a=0
  t=as.integer(readline(prompt = "Enter the number of strings:"))
  b=letters
  while(i<=t)
  {
    a[i]=readline(prompt= "Enter the string :")
  
    flag=0
    
    q=strsplit(a[i],"")
    for(s1 in q){}
    
    for(j in 1:26)
    {
      n=length(which(s1==b[j]))
      if(n!=j&&n>0)
        flag=1;
    }
    
    if(flag==0)
      print("yes")
    else
      print("no")
    
    i=i+1
  }
 
