#Load Packages
install.packages('ggplot2')
library(ggplot2)

setwd('//Users/nirupamaprv/Documents/nimmu/Nanodegree/WeatherProject')
getwd()

#Read temperatures for correlation coefficient into dataframe
tempInfo <- read.csv('CorrCoeff.csv')
View(tempInfo)

#add temperature values into variables 
globaltemp <- tempInfo$avg_temp_global #global temp
chitemp <- tempInfo$avg_temp_Chi       #Chicago city temp

#plot to visually view if relation exists between global and local temperatures
ggplot(data = tempInfo, mapping = aes(x= globaltemp, y = chitemp))+
  geom_point()

#computing correlation coefficients
?cor.test()
cor.test(globaltemp,chitemp)
cor.test(globaltemp,chitemp, method = 'pearson')
cor.test(globaltemp,chitemp, method = 'kendall')
cor.test(globaltemp,chitemp, method = 'spearman')

#compute correlation for five year Moving Averages
globaltemp_MA <- tempInfo$g_MA
chitemp_MA <- tempInfo$C_MA
cor.test(globaltemp_MA,chitemp_MA, method = 'kendall')
cor.test(globaltemp_MA,chitemp_MA, method = 'pearson')
cor.test(globaltemp_MA,chitemp_MA, method = 'spearman')




