#define a set of data that we are going to bootstrap from
#I'm going to make it 100 observations, with a mean of 20, and standard deviation of 3

MyData<-rnorm(20,20,10)

hist(MyData)
MeanMyData<-mean(MyData)
StdErrorMyData<-sd(MyData)/sqrt(length(MyData))
SampleVarianceMyData<-var(MyData)
sd(MyData)

#r is the repititions we will run
r<-1000

#s is the size of the sample we will take
s<-length(MyData)

#i is a counter for the loop
i<-1

#place to store the means
SampleMeans<-c()

#loop to repetitively take a sample
while(i<=r)
  {
SampleMyData<-sample(MyData,size = s,replace=TRUE)

#append SampleMyData to all of the SampleMeans
SampleMeans<-c(SampleMeans, mean(SampleMyData))

i<-i+1
}

hist(SampleMeans)
#define a set of data that we are going to bootstrap from
#I'm going to make it 100 observations, with a mean of 20, and standard deviation of 3

#Below I'm changing to exponential distribution

MyData<-rexp(20)

hist(MyData)
MeanMyData<-mean(MyData)
StdErrorMyData<-sd(MyData)/sqrt(length(MyData))
SampleVarianceMyData<-var(MyData)
sd(MyData)

#r is the repititions we will run
r<-1000

#s is the size of the sample we will take
s<-length(MyData)

#i is a counter for the loop
i<-1

#place to store the means
SampleMeans<-c()

#loop to repetitively take a sample
while(i<=r)
{
  SampleMyData<-sample(MyData,size = s,replace=TRUE)
  
  #append SampleMyData to all of the SampleMeans
  SampleMeans<-c(SampleMeans, mean(SampleMyData))
  
  i<-i+1
}

hist(SampleMeans)
