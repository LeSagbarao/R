simul3 <- function(nsimul, size, theta)
{
  a <- theta- 0.5
  b <- theta + 0.5
  x <- replicate(nsimul, fun2(size, a, b))
  list(biais = rowMeans(x)- theta,
       variances = apply(x, 1, var))
}