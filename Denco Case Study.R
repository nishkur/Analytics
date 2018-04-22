rollno = c(paste('s',1:30,sep = '-'))
#sname = c('S1','S2','S3')
(name= paste0('Student', 1:30, '-','xyz'))
(gender= sample(c('M','F'),size = 30,replace = T, prob = c(.7,.3)))
(marks= floor(runif(30,50,100)))
(course = sample(c('BTech','MTech','Phd'),size = 30,replace = T, prob = c(.3,.5,.2)))
(married= sample(c('TRUE','FALSE'),size = 30,replace = T, prob = c(.6,.4)))
(age= floor(runif(30,21,50)))
df= data.frame(rollno, name, gender,age, course, marks, married)
df
pie(table(course))
barplot(table(course))
hist(marks,freq = F)
lines(density(marks))
str(df)
df$rollno
df$sname

#export To CSV
write.csv(df,'./Data/pumba.csv',row.names = FALSE)
?write.csv
