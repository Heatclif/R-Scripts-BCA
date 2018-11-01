##Comented section also works

#p=2:10000

#for(i in 2:100)
#{
#  p=p[p%%i!=0 | p==i]
#}

primest <- function(n){
  p <- 2:n
  i <- 1
  while (p[i] <= sqrt(n)) {
    p <-  p[p %% p[i] != 0 | p==p[i]]
    i <- i+1
    #cat("Iteration ",i)
    #print(p)
  }
  p
}

prime=primest(10000)

print(prime)