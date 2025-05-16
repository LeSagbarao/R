fun2 <- function(size, a, b)
{
  u <- runif(size, a, b)
  c(Moyenne = mean(u),
    Mediane = median(u),
    "Mi-etendue" = mean(range(u)))
}