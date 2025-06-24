x <- c(151,174,138,186,128,136,179,163,152,131)  
y <- c(63,81,56,91,47,57,76,72,62,48)            


relation <- lm(y ~ x)

print(summary(relation))

new_data <- data.frame(x = 170)
predicted_weight <- predict(relation, new_data)
print(predicted_weight)

png(file = "C:/TYIT_52/linear_regression.png") 
plot(x, y, 
     col = "blue",
     main = "Height and Weight Regression",
     xlab = "Height in cm",
     ylab = "Weight in kg",
     cex = 1.3,
     pch = 16)
abline(relation, col = "red")  

dev.off()  