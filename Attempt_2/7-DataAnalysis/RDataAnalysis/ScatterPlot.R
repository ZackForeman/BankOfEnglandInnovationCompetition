predData <- read.csv("NeuralNetworkOutputs.csv")

str(predData)
head(predData)

x <- predData$Actual.Data
xLabel <- "Sample Data"
yLabel <- "Predicted Data"

y <- predData$Unemployment
title <- "Predictions made from Unemployment and CPIH"

plot(x, y, col = "red", xlab = xLabel, ylab = yLabel, main = title, xlim = c(0,10), ylim =c(0,10) )

text(paste("Correlation:", round(cor(x, y), 4)), x = 2, y = 8)
text(paste("Regression:", round((summary(lm(y~x))$coefficients)[2], 4)), x = 2, y = 9)
