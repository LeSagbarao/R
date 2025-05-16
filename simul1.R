simul1 <- function(nsimul, size, theta)
 {
 a <- theta- 0.5
 b <- theta + 0.5
 x <- matrix(0, nrow = 3, ncol = nsimul)
 rownames(x) <- c("Moyenne", "Mediane", "Mi-etendue")
 for (i in 1:nsimul)
 {
 u <- runif(size, a, b)
 x[, i] <- c(mean(u), median(u), mean(range(u)))
 }
 list(biais = rowMeans(x)- theta,
 variances = apply(x, 1, var))
 }
 