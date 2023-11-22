SIM <- 20000
hits <- NULL

# Our true lables identified by manual analysis.
Ytrue <- c(1,1,1,0,0,0,0,0,0,0)

for(i in 1:SIM){

  # Classify conflict randomly.
  Y <- rbinom(10, size = 1, prob=0.3)

  hit <- sum(Y == Ytrue)
  hits <- cbind(hits, hit)
}

hist(hits, breaks = 10, xlab = "Number of correct lables", main = "Histogram of hits")

table(hits)
