library(Stat2Data)

data("LostLetter")
glm0 = glm(Returned ~ Location + Address , family = "binomial", data = LostLetter)
summary(glm0)

data(Political)
glm1 = glm(Participate ~ Inform, family = "binomial", data=Political)
summary(glm1)


data("Election08")
glm2 = glm(ObamaWin ~ Dem.Rep + BA, family = "binomial", data=Election08)
summary(glm2)

data("Leukemia")
glm5 = glm(Resp ~ Age + Smear + Infil + Index + Blasts + Temp, family = "binomial", data = Leukemia)
glmred = glm(Resp ~ Age + Index + Temp, family = "binomial", data = Leukemia)
summary(glm5)
summary(glmred)
anova(glmred, glm5p)

data("Film")
glm6 = glm(Good ~ Year + Time + Cast + Description, family = "binomial", data = Film)
summary(glm6)

data("Overdrawn")
newData = na.omit(Overdrawn)
glm7 = glm(Overdrawn ~ Sex + DaysDrink + Age, family = "binomial", data = newData)
summary(glm7)
