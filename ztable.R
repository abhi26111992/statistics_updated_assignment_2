# first step is to create a table just of the z-scores that correspond to each cell

c0 <- seq(-3.4,0,.1)
c1 <- seq(-3.41,0,.1)
c2 <- seq(-3.42,0,.1)
c3 <- seq(-3.43,0,.1)
c4 <- seq(-3.44,0,.1)
c5 <- seq(-3.45,0,.1)
c6 <- seq(-3.46,0,.1)
c7 <- seq(-3.47,0,.1)
c8 <- seq(-3.48,0,.1)
c9 <- seq(-3.49,0,.1)
z <- cbind(c0,c1,c2,c3,c4,c5,c6,c7,c8,c9)
z
# we use pnorm function now and last 3 lines are for formatting the result 

zscore.df <- round(pnorm(z),4)
row.names(zscore.df) <- sprintf("%.2f", c0)
colnames(zscore.df) <- seq(0,0.09,0.01)
zscore.df

probability<-zscore.df[1,1]
answer<-pnorm(probability)
answer
zvalue<-qnorm(answer)
zvalue