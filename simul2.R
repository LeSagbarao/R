simul2 <-function(nsimul, size,theta)
{
  a<-theta-0.5
  b<-theta +0.5
  x<-sapply(1:nsimul, fun1,size,a,b)
  list(biais=rowMeans(x)-theta,
       variances=apply(x,1,var))
}
