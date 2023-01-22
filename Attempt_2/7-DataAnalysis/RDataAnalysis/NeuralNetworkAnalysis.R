predData <- read.csv("NeuralNetworkOutputs.csv")

str(predData)
head(predData)

months <- seq(1,58)
months

newBankRate <- predData$Bank.Rate

print(newBankRate)

plot(months, predData$Actual.Data, type = "l", col = "black", lwd = 4, ylab = "Inflation Rate", xlab = "Month")

lines(months, predData$Bank.Rate, type = "l", col = "blue", lwd = 2)
lines(months, predData$Conversion.Rate, type = "l", col = "blue", lwd = 2)
lines(months, predData$CPIH, type = "l", col = "blue", lwd = 2)
lines(months, predData$GDP, type = "l", col = "blue", lwd = 2)
lines(months, predData$Gold.Prices, type = "l", col = "blue", lwd = 2)
lines(months, predData$House.Prices, type = "l", col = "blue", lwd = 2)
lines(months, predData$Unemployment, type = "l", col = "blue", lwd = 2)
