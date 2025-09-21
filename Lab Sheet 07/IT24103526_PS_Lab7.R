setwd("C:\\Users\\HP\\Desktop\\IT24103526")
getwd

# Task 1: Uniform distribution for train arrival
p_between_10_25 <- punif(25, min = 0, max = 40) - punif(10, min = 0, max = 40)
p_between_10_25


# Task 2: Exponential distribution for software update time
p_at_most_2 <- pexp(2, rate = 1/3)
p_at_most_2  



# Task 3i: Normal distribution for IQ scores
p_above_130 <- 1 - pnorm(130, mean = 100, sd = 15)
p_above_130 

# Task 3ii: 95th percentile for IQ
iq_95th <- qnorm(0.95, mean = 100, sd = 15)
iq_95th  

































