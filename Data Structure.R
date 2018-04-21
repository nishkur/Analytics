x <- c(0:10, 50)
x
xm <- mean(x)
c(xm, mean(x, trim = 0.10))
y=0:100
y

x[c(3,5,7)]
?seq
seq(2,100,2)
x[c(seq(1,12,2))] #position of values
x[x==5]
x[x<5]

#Vector----
v1 = c(1,2,3,4,5)
v1[v1==4]=7
v1
class(v1)
?class
v2= c('A','B','C','D','E')
class(v2)
v3= c(TRUE, FALSE,T, F)
class(v3)
v2[3]
v4=c(1,2,'A')
v4
class(v4)
v5=c(T,1,F)
v5
class(v5)
v6=c('A',3,F)
v6
class(v6)
set.seed(100)
v7=rnorm(100, mean=60,sd=15)
v7
?rnorm
mean(v7)
sd(v7)
hist(v7,breaks = 15, col=1:15)
?hist
hist(v7,freq=F, col='yellow', main = '', xlab='Marks', ylab='Density of Counts', xlim = c(0,100), ylim = c(0,0.05))
lines(density(v7), col='red', lty=1,lwd=4)
title(main=' Pune University', sub='MBA')



#Matrix----

length(100:123)
m1=matrix(100:123,6, byrow = T)
(m1=matrix(100:123,6, byrow = T))
(m2=matrix(100:123,4, byrow = T))
m2[1,]
m2[,2]
m2[1:2, ]
m2[, c(1,4)]
m2[2:6,1:4] #2 & 6th row, 1st & 4th Col
m2[2:4,1:4]
colSums(m2)
rowSums(m2)
rowMeans(m2)






#Array----

(a1=array(100:123, dim = c(4,3,2)))
?array
(loc = paste('loc', 1:4,sep = '-'))
(product = paste('p', 1:3,sep = '@'))
(coy = paste('coy', 1:2,sep = '%'))
dimnames(a1)=list(loc, product,coy)
a1
apply(a1,1,sum)
apply(a1,2,sum)
apply(a1,3,sum)
sum(a1)
apply(a1,c(1,2),sum)
apply(a1,c(2,3),sum)
apply(a1,c(1,3),sum)




#Data Frame

(rolln = 1:30)
(sname = paste('student',1:30,sep=''))
(gender= sample(c('M','F'),size = 30,replace = T, prob = c(.7,.3)))
(marks= floor(runif(30,50,100))) # floor, celling, trunc, roundoff can be used to avoid decimal value
(marks2= ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA'),size = 30,replace = T, prob = c(.5,.5)))
df1 = data.frame(rolln, sname,gender, marks, marks2, course)
head(df1)
tail(df1)

str(df1)
class(df1)
summary(df1)

df1$gender
df1$marks
df1[ ,c(2,4)]
df1[1:10, ]

df1[marks>50, ] # Student marks >50
df1[marks>50 & gender=='F',  ]
df1[marks>50 & gender=='F', c(1,2)]
df1[marks>50 | gender=='F',]
names(df1) #name of column
dim(df1) #Diamension od DF

aggregate(df1$marks, by=list(df1$gender),FUN=mean)
df2= aggregate(marks ~ gender, data=df1  ,FUN=max)
pie(x=df2$marks)
barplot(df2$marks, col=1:2)





#Factors----
(grades=sample(c('A','B','C','D'), size=30, replace=T, prob=c(.3,.2,.4,.1)))
table(grades)
gradesF = factor(grades)
grades
gradesF
gradesF1= factor(grades, ordered=T, levels=c('D','C','B','A'))
gradesF1

#List----





