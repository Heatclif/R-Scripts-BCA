
    mcode<-c(31,28,31,30,31,30,31,31,30,31,30,31)
    
    y=as.integer(readline(prompt="Enter year :"))
    
    
    m=as.integer(readline(prompt="Enter month number:"))
    
    d=as.integer(readline(prompt = "Enter day :"))
    
    
    if((y%%4==0 && y%%100!=0) || y%%400==0){
      if(m>2) {
        sday=1
      }else {
        sday=0
      }
      
      sday=sday+sum(mcode[1:m-1])
    }else{
      sday=sum(mcode[1:m-1])
    }
    
    c=(y+sday+(d-1)+floor((y-1)/4)-floor((y-1)/100)+floor((y-1)/400))%%7
    
    c=c+1
    
    day=switch(c,"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")
    #cat("The first day of the month in the year is",day)
    cat("\nThe day on the given date is",day)
  


