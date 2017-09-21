#Load Packages
install.packages('ggplot2')
library(ggplot2)


setwd('//Users/nirupamaprv/Documents/nimmu/Nanodegree/WeatherProject')
getwd()

#Read Chicago city temperature averages
cityInfo <- read.csv('ChicagoResults.csv')
View(cityInfo)

#Read global temperature averages results
globalInfo <- read.csv('globalResults.csv')
View(globalInfo)


# Create the data for the chart 
world <- c(globalInfo$FiveYearMA)
chiTown<- c(cityInfo$FiveYearMA)


#assign colors- blue for global temperatures and red for Chicago
# as observed in CSV that global temperatures hotter than Chicago temperatures
# following standard color conventions: red = hot, blue = cold
# Give the chart file a name.
png(file = "AvgTempGlobalvsChicago.jpg")

# Plot the bar chart.
plot(chiTown,type = "o",col = "red", xlab = "5 Year Moving Averages", ylab = "Temperature", 
     main = "Moving Average Temperatures")

lines(world, type = "o", col = "blue")
# Add a legend
legend('bottomright', legend=c("Chicago", "World"),
       lty=1,
       col=c("red", "blue"))
# Save the file.
dev.off()

# Create the data -10yrMA for the chart 
world10 <- c(globalInfo$TenYearMA)
chiTown10<- c(cityInfo$TenYearMA)


#assign colors- blue for global temperatures and red for Chicago
# as observed in CSV that global temperatures hotter than Chicago temperatures
# following standard color conventions: red = hot, blue = cold
# Give the chart file a name.
png(file = "AvgTempGlobalvsChicago10YrMALeg.jpg")

# Plot the bar chart.
plot(chiTown10,type = "o",col = "red", xlab = "10 Year Moving Averages", ylab = "Temperature (Celsius)", 
     main = "Moving Average Temperatures")
lines(world10, type = "o", col = "blue")
# Add a legend
legend('bottomright', legend=c("Chicago", "World"),
       lty=1,
       col=c("red", "blue"))
# Save the file.
dev.off()


