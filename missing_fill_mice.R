rm(list = ls());gc()
library(mice)
sum(is.na(data))
tempData <- mice(data,m=5,maxit=50,meth='pmm',seed=500)
summary(tempData)
completedData <- complete(tempData,1)
write.csv(completedData,file='filename.csv',row.names=FALSE)
