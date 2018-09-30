

data = read.csv("ratings.csv")
data1 <- subset(data,timestamp >=1443673958  & timestamp <= 1444019558 )
data2 = read.csv("movies.csv")
data3 = merge(data1,data2,by="movieId")
data4 = data3[ ,c(1,3,5)]
data5 <- data4[order(data4$rating,decreasing = TRUE) ,]
data6 = data5[1:10 ,]

print(data6)
data7 = data6[,"title"]
data8 = data6[, "rating"]


pie(data8, data7 , main = "Top 10 Rating movie between data", col = rainbow(length(data8)))

dev.off()





