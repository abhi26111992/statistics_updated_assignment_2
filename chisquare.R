qchisq(p = 0.01, df = 7)
# Set p-values
p <- c(0.995, 0.99, 0.975, 0.95, 0.90, 0.10, 0.05, 0.025, 0.01, 0.005)
# Set degrees of freedom
df <- seq(1,20)

# Calculate a matrix of chisq statistics
m <- outer(p, df, function(x,y) qchisq(x,y))

# Transpose for a better view
m <- t(m)

# Set column and row names
colnames(m) <- p
rownames(m) <- df

m
answer<-m[1,1]
probability<-pchisq(m,0.01)
probability
chivalue<-qchisq(probability,0.01)
chivalue