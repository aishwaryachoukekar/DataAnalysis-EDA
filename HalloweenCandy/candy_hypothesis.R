


candy <- read.csv('candy.csv') 

attach(candy)

names(candy)

#hypothesis testing with t-test
t.test(winpercent~chocolate) # p-value = 4.164e-10
t.test(winpercent~fruity) # p-value = 0.0001847
t.test(winpercent~caramel) # p-value = 0.08728
t.test(winpercent~peanutyalmondy) # p-value = 0.003198
t.test(winpercent~nougat) # p-value = 0.09271
t.test(winpercent~crispedricewafer) # p-value = 0.004119
t.test(winpercent~hard) # p-value = 3.125e-05
t.test(winpercent~bar) # p-value = 1.6e-05
t.test(winpercent~pluribus) # p-value = 0.02324

# Correlation matrix
library(corrplot)

corrplot(cor(candy[-c(1)]))
