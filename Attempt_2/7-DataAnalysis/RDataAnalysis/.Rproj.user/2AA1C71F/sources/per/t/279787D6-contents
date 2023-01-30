predData <- read.csv("NeuralNetworkOutputs.csv")

str(predData)
head(predData)

months <- seq(1,58)
months

newBankRate <- predData$Bank.Rate

print(newBankRate)

plot(months, predData$Actual.Data, type = "l", col = "black", lwd = 2, ylab = "Inflation Rate", xlab = "Month")

lines(months, predData$Bank.Rate, type = "l", col = "#ff0000", lwd = 2)
lines(months, predData$Conversion.Rate, type = "l", col = "#be6600", lwd = 2)
lines(months, predData$CPIH, type = "l", col = "#7c8000", lwd = 2)
lines(months, predData$GDP, type = "l", col = "#3e8826", lwd = 2)
lines(months, predData$House.Prices, type = "l", col = "#008760", lwd = 2)
lines(months, predData$Unemployment, type = "l", col = "#008080", lwd = 2)
legend(1,8,
       legend = c("Actual", "Bank Rate", "Conversion Rate", "CPIH", "GDP", "House Prices", "Unemployment"), 
       col = c("black", "#ff0000", "#be6600", "#7c8000", "#3e8826", "#008760", "#008080"),
       pch=15)

print("Bank Rate RMSE")
print(sqrt(mean((predData$Actual.Data - predData$Unemployment)^2)))

