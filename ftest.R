#alpha=0.001
right_tail_p <- 0.01

# Inf corresponds to infinity(or negative infinity)

n1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 15, 20, 24, 30, 40, 60, 120, Inf)
n2 <- c(1:30, 40, 60, 120, Inf)

# precision (4-decimal point accuracy)
options(digits=4)

# Generating an empty matrix of critical f-values
f_table <- matrix(ncol=length(n1), nrow=length(n2))

# Using the The F Distribution quantile function to fill in the matrix values in the nested loop


for (i in 1:length(n2)){
  for (j in 1:length(n1)){
    f_table[i,j] <- qf(right_tail_p, n1[j], n2[i], lower.tail = FALSE)
  }
} 

# Print results
f_table

# label rows and columns
rownames(f_table) <- n2; colnames(f_table) <- n1

probability<-f_table[1,1]
answer<-pf(probability,3,2)
answer
fvalue<-qf(answer,3,2)
fvalue