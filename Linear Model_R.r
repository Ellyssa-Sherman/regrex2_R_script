dataset <- read.csv("regrex1.csv",
                    header = TRUE)
dataset

y1 <- dataset[,1]
x1 <- dataset[,2]

# Plot data points
plot(y1,
     x1,
     ylab="Y",
     xlab="X")

# Create linear regression model, plot points, and add regression
lmRegrex = lm(x~y, data = dataset)
plot(dataset,
    pch = 16,
    col = "black")
abline(lmRegrex)
