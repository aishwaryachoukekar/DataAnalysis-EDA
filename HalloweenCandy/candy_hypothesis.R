
# This file contains code for hypothesis testing based on t-test for the halloween candy data.

candy <- read.csv('candy.csv') 

attach(candy)

names(candy)

#hypothesis testing with t-test

#H0: mean of presence of {col} == mean of absence of {col}
#Ha: mean of presence of {col} != mean of absence of {col}


#test significance for chocolate
t.test(winpercent~chocolate) # p-value = 4.164e-10

#test significance for chocolate
t.test(winpercent~fruity) # p-value = 0.0001847

#test significance for caramel
t.test(winpercent~caramel) # p-value = 0.08728

#test significance for peanutyalmondy
t.test(winpercent~peanutyalmondy) # p-value = 0.003198

#test significance for nougat
t.test(winpercent~nougat) # p-value = 0.09271

#test significance for crispedricewafer
t.test(winpercent~crispedricewafer) # p-value = 0.004119

#test significance for hard
t.test(winpercent~hard) # p-value = 3.125e-05

#test significance for bar
t.test(winpercent~bar) # p-value = 1.6e-05

#test significance for pluribus
t.test(winpercent~pluribus) # p-value = 0.02324

# Correlation matrix
library(corrplot)

corrplot(cor(candy[-c(1)]))
