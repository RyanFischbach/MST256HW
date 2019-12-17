

##3a)
pnorm(38, mean = 40, sd = 0.93)

##3b)
1 - pnorm(42, mean = 40, sd = 0.93)

##3c)
qnorm(0.75, mean = 40, sd = 0.93)

##3d)
qnorm(0.4, mean = 40, sd = 0.93)

##4a)
library(Stat2Data)
data("HighPeaks")
sd(HighPeaks$Time)

##4b)
lm1=lm(Time ~ 1, data=HighPeaks)
summary(lm1)

##4c)
plot(HighPeaks$Time ~ HighPeaks$Length, main = "Time of Hike On Length", xlab = "Length (miles)
     ", ylab = "Time (hours)")

plot(HighPeaks$Time ~ HighPeaks$Difficulty, main = "Time of Hike On Difficulty", xlab = "Difficulty (1-7)
     ", ylab = "Time (hours)")

plot(HighPeaks$Time ~ HighPeaks$Ascent, main = "Time of Hike On Ascent", xlab = "Ascent (miles)
     ", ylab = "Time (hours)")

##4d)
lm2=lm(Time ~ Length, data=HighPeaks)
summary(lm2)

##4e)
lm3=lm(Time ~ Difficulty, data=HighPeaks)
summary(lm3)

##4f)
lm4=lm(Time ~ Ascent, data=HighPeaks)
summary(lm4)
