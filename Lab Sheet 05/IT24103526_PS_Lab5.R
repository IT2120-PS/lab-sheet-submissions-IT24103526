setwd("C:\\Users\\HP\\Desktop\\IT24103526")
getwd()

Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")
fix(Delivery_Times)
head(Delivery_Times)
str(Delivery_Times)


breaks_seq <- seq(20, 70, length.out = 10)  # Breaks: 20, 25.5556, ..., 70
hist(Delivery_Times$Delivery_Time_.minutes., breaks = breaks_seq, right = FALSE, 
     main = "Histogram of Delivery Times", xlab = "Delivery Time (minutes)", 
     ylab = "Frequency", col = "lightblue", border = "black")
print(breaks_seq)

# Optional: Get frequency table from hist for verification
hist_info <- hist(Delivery_Times$Delivery_Time_.minutes., breaks = breaks_seq, right = FALSE, plot = FALSE)
freq_table <- data.frame(Intervals = paste("[", round(breaks_seq[-length(breaks_seq)], 2), ", ", round(breaks_seq[-1], 2), ")", sep = ""),
                         Frequency = hist_info$counts)
print(freq_table)

# Compute cumulative frequencies
freq <- hist_info$counts  # From previous hist
cum_freq <- cumsum(freq)
# Create 'new' for ogive: starts at 0, then cumulative up to previous class
ogive_y <- c(0, cum_freq)  # 0 before first class, then full cum at end

# Upper bounds are the breaks
upper_bounds <- breaks_seq

# Plot the ogive
plot(upper_bounds, ogive_y, type = "o", pch = 19, col = "blue", 
     main = "Cumulative Frequency Polygon (Ogive) for Delivery Times", 
     xlab = "Upper Limit of Delivery Time (minutes)", ylab = "Cumulative Frequency", 
     ylim = c(0, max(ogive_y)))
abline(h = 0, col = "gray")  # Optional base line





































