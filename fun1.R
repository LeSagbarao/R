fun1<- function(i,size,a,b)
{
  u<- runif(size,a,b)
  c(Moyenne= mean(u),
    Mediane=median(u),
    "Mi-etendue"=mean(range(u)))
}


simul3(10000, 100, 0)
