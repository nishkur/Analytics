Default
head(Default)

logr1 =glm(default~ student+balance+income, data=Default, family = 'binomial')
summary(logr1)
logr2 =glm(default~ student+balance, data=Default, family = 'binomial')
summary(logr2)
ndata3= Default[seq(1,nrow(Default),1000),]
ndata3
(p1=predict(logr2,newdata = ndata3, type='response'))
cbind(ndata3, p1, p2=ifelse(p1<0.5,'No','Yes'))
