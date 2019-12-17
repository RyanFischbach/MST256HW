survey = read.csv(file="MessyData.csv", header=T)

## 2(a)
boxplot(survey$Height ~ survey$BiologicalSex, ylab = "Height", xlab = "Biological Sex", 
     main = "Height on Biological Sex")

## 2(b)
barplot(table(survey$Digit), main = "MST 109 Random Digits", xlab = "Digit", ylab = "Frequency")

## 2(c)
mean(survey$US)
median(survey$US)

## 2(d)

qnorm(0.25, mean = mean(survey$Gutenberg), sd = sd(survey$Gutenberg))
pnorm(1450, mean = mean(survey$Gutenberg), sd = sd(survey$Gutenberg))

## 3
library(Stat2Data)
data(Cereal)
head(Cereal)

## 3(a)
hist(Cereal$Calories, xlab = "Calories Per Serving", ylab = "Frequency", main = "Distribution of Calories Per Serving")
hist(Cereal$Fiber, xlab = "Fiber Per Serving", ylab = "Frequency", main = "Distribution of Fiber Per Serving")
hist(Cereal$Sugar, xlab = "Sugar Per Serving", ylab = "Frequency", main = "Distribution of Sugar Per Serving")
## 3(b)
plot(Cereal$Fiber ~ Cereal$Sugar, main = "Fiber Per Serving on Sugar Per Serving", ylab = "Fiber Per Serving", xlab = "Sugar Per Serving")

## 3(c)
plot(Cereal$Calories ~ Cereal$Sugar, xlab = "Sugar Per Serving", ylab = "Calories Per Serving", main = "Calories Per Serving on Sugar Per Serving")
plot(Cereal$Calories ~ Cereal$Fiber, xlab = "Fiber Per Serving", ylab = "Calories Per Serving", main = "Calories Per Serving on Fiber Per Serving")

## 3(e)
min(Cereal$Fiber)
mean(Cereal$Fiber)
max(Cereal$Fiber)
