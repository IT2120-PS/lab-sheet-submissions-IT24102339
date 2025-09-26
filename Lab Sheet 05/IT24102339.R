setwd("C:/Users/User/Desktop/IT24102337 Lab 5")
getwd()

data <- read.csv("Exercise - Lab 05.txt" , header = TRUE , sep = ",")

delivery_Times <- data.frame(data)

names(delivery_Times) <- c("X1" )

attach(delivery_Times)

hist(X1 , col = "skyblue" ,main =  "Histogram for Delivery times" , 
     breaks = seq(20,70,length = 10) , right = FALSE , 
     xlab = "Delevery Times(Minutes)" , ylab = "Frequancy ")


hist_data <- hist(X1 , breaks = seq(20,70, by = 6) ,plot = FALSE)

cum_freq <- cumsum(hist_data$counts)

class_limits<- hist_data$breaks 

plot(class_limits[-1] , cum_freq , type = "o", col = "purple" , main = "Cumulative frequancy polygon",
     xlab = "Delevery time" , ylab = "cumulative Frequency ")