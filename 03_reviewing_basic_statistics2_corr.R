help(trees)  

# pair plot of 'trees' data
pairs(trees, pch=21, bg=c("red")) # relationship among tree girth, height and volume => variables are all positively correlated
# pch(plotting symbols, characters; 기호 모양) => 그래프 모수 설명 링크: https://rfriend.tistory.com/149

# correlation among girth, height, volume
cor(trees)

# covariance
# cov is a sum of deviations of X and Y and taking an average to the quantity
# 1/(n-1)*sum((x-x_bar)(y-y_bar))