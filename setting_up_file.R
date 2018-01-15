df <- read.csv('data.csv')
company<- df[,1]
df1<- df[,2:17]
df2<- df[,18:33]
df3<- df[,34:49]
df4<- df[,50:65]
df5<- df[,66:81]
df6<- df[,82:97]
df7<- df[,98:113]
df8<- df[,114:129]
df9<- df[,130:145]
df10<- df[,146:161]

df1 <-cbind(company,df1)
df2 <-cbind(company,df2)
df3 <-cbind(company,df3)
df4 <-cbind(company,df4)
df5 <-cbind(company,df5)
df6 <-cbind(company,df6)
df7 <-cbind(company,df7)
df8 <-cbind(company,df8)
df9 <-cbind(company,df9)
df10 <-cbind(company,df10)

library(data.table)
df_1<-rbindlist(list(df1, df2))[order(company)]
df_2<-rbindlist(list(df_1, df3))[order(company)]
df_3<-rbindlist(list(df_2, df4))[order(company)]
df_4<-rbindlist(list(df_3, df5))[order(company)]
df_5<-rbindlist(list(df_4, df6))[order(company)]
df_6<-rbindlist(list(df_5, df7))[order(company)]
df_7<-rbindlist(list(df_6, df8))[order(company)]
df_8<-rbindlist(list(df_7, df9))[order(company)]
df_9<-rbindlist(list(df_8, df10))[order(company)]
df <- df_9
View(df)

write.csv(df, file='data_m.csv',row.names = FALSE)
