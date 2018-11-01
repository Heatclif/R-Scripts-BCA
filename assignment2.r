#Question No.2

ch=letters
num=as.integer(readline(prompt = "Enter the no. of strings to enter :"))
i=1

while(i<=num)
{
  S=readline(prompt = "Enter the string :")
  
  S=gsub(" ", "", S, fixed = TRUE)  #removing space
  
  S=strsplit(S,"")  #making a list of S
  for(s1 in S){} #making s1 a character vector from S
  
  c=0
  
  ano=0
  
  
  for(a in s1)
  {
    for(b in s1)
    {
      if(a==b)
        c=c+1
    }
    
    if(ch[c]!=a)
    {
      print("No")
      ano=1
      break
    }
    
    c=0
    
  }
  
  if(ano==0)
    print("Yes")
  
  i=i+1
}