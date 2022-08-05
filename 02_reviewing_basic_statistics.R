# Basic Statistics Review – Linear Regression

# open time series dataset 'CO2'
co2
help(co2) # to obtain a description
class(co2) # to verify type of object # "ts": time series

# plot time series data
plot(co2, main='Atmospheric CO2 Concentration') # increasing over time 

# calculate the slope and intercept values "by hand"
co2.values = as.numeric(co2) #co2 값만 숫자로 저장
co2.times = as.numeric(time(co2)) #시계열데이터의 시간정보만 숫자로 저장 
SSxx = sum( (co2.times - mean(co2.times))*(co2.times - mean(co2.times)) )
SSxy = sum( (co2.values - mean(co2.values))*(co2.times - mean(co2.times)) )
slope = SSxy/SSxx
intercept = mean(co2.values)-slope*mean(co2.times)

# calculate the slope and intercept values with "R"
co2.linear.model = lm(co2~time(co2))

# place a fitted line on the graph
plot(co2, main='Atmospheric CO2 Concentration with Fitted Line')
abline(co2.linear.model )

# calculate residuals "by hand"
co2.fitted.values = slope*co2.times + intercept
co2.residuals = co2.values - co2.fitted.values #잔차

# calculate residuals with "R"
co2.residuals = resid( co2.linear.model ) #잔차 

# see histogram, normal probability and residuals to check if the residuals are normally distributed
par(mfrow=c(1,3)) #그래프를 1행3열로 배치
hist(co2.residuals, main= "Histogram of CO2 Residuals") #데이터가 클 때 확인
qqnorm(co2.residuals, main= "Normal Probability Plot") #데이터가 작을 때 확인
qqline(co2.residuals)
plot(co2.residuals ~ time(co2), main="Residuals on Time")
## 1960~1963년도만 줌인
par(mfrow=c(1,1))
plot(co2.residuals~time(co2), xlim=c(1960,1963), main="Zoomed in Residuals on Time")

#
#

# open dataset 'sleep'
sleep

# plot the data - boxplot
plot(extra~group, data=sleep, main = "Extra Sleep in Gossett Data by Group")

# "attach" the data frame to easily access a variable without a dollar sign
attach(sleep)
extra.1 = extra[group==1]
extra.2 = extra[group==2]

# run a t-test
t.test(extra.1, extra.2, paired=TRUE, alternative="two.sided")
# for the t-test to be meaningful, we assume the population of differences is normally distributed
diffs = extra.1 - extra.2
qqnorm(diffs, main="Normal Probability Plot")
qqline(diffs)

# A Regression Model
# plot a scatter plot
plot(extra.2~extra.1, xlab='extra sleep with drug 1', ylab='extra sleep with drug 2', main='Extra Sleep Drug 2 against Extra Sleep Drug 1')
sleep.linear.model = lm(extra.2~extra.1)
abline(sleep.linear.model)

# plot normal probability for the residuals
summary(sleep.linear.model) #slope, intercept 확인 (잔차의 5 number summary, 상관계수, p값 등도 확인 가능) 
# => extra.2 = 0.8899*extra.1 + 1.6625

