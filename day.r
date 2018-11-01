
repeat
{
  y=as.integer(readline(prompt="Enter year (0 to Exit):"))
  
  if(y==0) break
  
  else
  {
    c=(y+floor((y-1)/4)-floor((y-1)/100)+floor((y-1)/400))%%7
  
    c=c+1
  
    day=switch(c,"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")
    cat("The first day in the year is",day)
  }
}


