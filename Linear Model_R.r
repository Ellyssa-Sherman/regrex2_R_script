args <- commandArgs(trailingOnly = TRUE)

# Call in data for plotting with argument line (regression same as Python exercise) 
dataset <- read.csv(args[1])
dataset

y1 <- dataset[,1]
x1 <- dataset[,2]

# Plot data points, opening png device.
# This method for plotting the scatter plot calls up each x,y coordinate for plotting.
png('R_Scatter Data.png')
plot(y1,
     x1,
     ylab='Y',
     xlab='X',
     pch = 16,
     col = 'black',
     main = 'Scatter Data')
dev.off() # closing png device


# Create linear regression model, plot points, and add regression
# Opening png device
# This method for plotting the scatter plot and adding the regression is more straight forward because it assumes the data points are in x,y format.
png('R_Regression Data.png')
lmRegrex = lm(x~y, data = dataset)
plot(dataset,
    pch = 16,
    col = 'black',
    main = 'Regression Data')
abline(lmRegrex)
dev.off()  # closing png device