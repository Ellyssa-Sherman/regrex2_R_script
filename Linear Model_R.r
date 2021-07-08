args <- commandArgs(trailingOnly = TRUE)

# Call in data for plotting with argument line (regression same as Python exercise) 
dataset <- read.csv(args[1])
dataset

y1 <- dataset[,1]
x1 <- dataset[,2]

# Plot data points, opening png device.
png('Data Scatter Plot_R.png')
plot(y1,
     x1,
     ylab='Y',
     xlab='X',
     main = 'Regrex Data')
dev.off() # closing png device

# Create linear regression model, plot points, and add regression
# Opening png device
png('Data Linear Regression Plot_R.png')
lmRegrex = lm(x~y, data = dataset)
plot(dataset,
    pch = 16,
    col = 'black',
    main = 'Regrex Data')
abline(lmRegrex)
dev.off()  # closing png device