
data = read.csv("net_data.csv")
data1 <- subset(data,Operator =="JIO" & Technology =="4G" & Testtype =="download" & LicenseServiceArea != "<NA>")
data2 <- data1[order(data1$Speed,decreasing = TRUE) ,]
data3 <-data2[1:5,c(1,2,4,6)]
print(data3)

data4 = data3[,"LicenseServiceArea"]
data5 = data3[, "Speed"]


barplot(data5,names.arg=data4,xlab="Area",ylab="Speed",col=c("beige","orange","blue","green","black"),
main=" JIO download top 5  Speed Area Chart",border="red")

dev.off()

