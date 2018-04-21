#dplyr

df= read.csv('./Data/denco.csv')
df
summary(df)
str(df)
names(df)
aggregate(df$revenue, by=list(df$region),mean)

 library(gsheet)
 