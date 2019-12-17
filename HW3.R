##1)
library(Stat2Data)
data("Sparrows")

lm1=lm(Weight ~ WingLength, data=Sparrows)
sum(lm1$residuals^2)
sum((lm1$fitted.values - mean(Sparrows$Weight))^2)
anova(lm1)
summary(lm1)
plot(Weight ~ WingLength, data=Sparrows)

plot(lm1)

##2)
plot(Circle$Estimated.Area ~ Circle$Radius, xlab = "Radius", ylab = "Estimated Area")
prelim = lm(Estimated.Area ~ Radius, data=Circle)
anova(prelim)
plot(prelim)

final = lm(Estimated.Area ~ I(Radius^2), data=Circle)
plot(final)
summary(final)


data("ChildSpeaks")
plot(Age ~ Gesell, data=ChildSpeaks, ylab = "Age of First Speaking", xlab = "Gesell aptitude score", main = "Age of First Speaking on Gesell aptitude score")
child = lm(Age ~ Gesell, data=ChildSpeaks)

