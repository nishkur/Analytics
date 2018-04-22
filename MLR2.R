omni #dataset
names(omni)
mlr2=lm(sales~ price + promotion, data = omni)
summary(mlr2)
predict(mlr2,newdata= data.frame(price=60, promotion=400))
