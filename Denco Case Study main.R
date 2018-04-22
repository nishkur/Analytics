#dplyr
#Read File: Method1

sales= read.csv('./Data/denco.csv')
sales

#Read file Method 2
sales2= read.csv(file.choose())
sales2

summary(sales)
str(sales)
head(sales)
names(sales)
dim(sales)
unique(sales$custname)
length(unique(sales$custname))
length(unique(sales$region))

library(dplyr)
names(sales)
 sales %>% group_by(custname) %>% summarise(Revenue= sum(revenue)) %>% arrange(desc(Revenue)) #To find customer by max revenue

# Triumph Ins gave max revenue

#options(tibble.width = Inf) # Display all col
#options(tibble.print_max = Inf) #Display all row

 #Method 1
sales %>% dplyr::count(custname,sort = TRUE) %>% head(n=5)  #dplyr:: is optional

#Method 2
sales %>% dplyr::group_by(custname)%>% dplyr::summarise(n=n())%>% dplyr::arrange(desc(n)) %>% head(n=5)

# Count Of Partnum with max sales

sales %>% dplyr::count(partnum,sort = TRUE) %>% head(n=5) 

#which parts have highest profit: partno- sum(profit)
 names(sales)
 
 sales %>% group_by(partnum) %>% summarise(TotalMargin= sum(margin))%>%
   arrange(desc(TotalMargin))%>% head()
 
 #Which region gave max revenue
 
 sales %>% group_by(region) %>% summarise(Revenue=sum(revenue))%>%
   arrange(desc(Revenue))%>% head()
 
 #pie(x=df$revenue)
 
 #Filter the data

sales %>% filter(region=='01-East')%>% head()





 
 