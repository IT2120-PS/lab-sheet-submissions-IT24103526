setwd("C:\\Users\\HP\\Desktop\\IT24103526")
getwd

#Probability that at least 47 students passed (P(X >= 47))
p_at_least_47 <- 1 - pbinom(46, size=50, prob=0.85)
p_at_least_47  # Print the result

#Probability that exactly 15 calls are received (P(X = 15))
p_exactly_15 <- dpois(15, lambda=12)
p_exactly_15
























