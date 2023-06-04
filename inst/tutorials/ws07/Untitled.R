## Q6 From Workshop 7 in Week 8

##  If likelihood is p(x|theta)=(1-theta)^{y-1}theta
##  and prior is beta then the posterior is beta
##  p(theta|x)~Beta(a+n,b+sum(x)-n)

n<-rep(5,4)
sumy<-rep(6,4)

a<-c(0.1,1,8,20)
b<-a

df<-tibble(a,b,n,sumy,model=c("model 1","model 2","model 3", "model 4"))

ggplot(df,aes(colour=model))+
  geom_function(fun = function(x) dbeta(x,a[1]+n,b[1]+sumy-n),aes(colour=model[1]) )+
  geom_function(fun = function(x) dbeta(x,a[2]+n,b[2]+sumy-n),aes(colour=model[2]) )+
  geom_function(fun = function(x) dbeta(x,a[3]+n,b[3]+sumy-n) ,aes(colour=model[3]))+
  geom_function(fun = function(x) dbeta(x,a[4]+n,b[4]+sumy-n),aes(colour=model[4]))

##  Larger n and sum of y means smaller posterior variance, but same posterior means

