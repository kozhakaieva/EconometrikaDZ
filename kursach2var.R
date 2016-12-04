library(psych)
describe(datasets2$Zena)
describe(datasets2$Magas)
describe(datasets2$Rassmetr)
describe(datasets2$Ludi)
pairs(datasets2,panel=panel.smooth)
cor(datasets2)
zeni<-lm(Zena~Magas+Rassmetr+Ludi+Sred+Big,data=datasets2)
vif(zeni)
sqrt(vif(zeni))>2
zeni<-lm(Zena~Magas+Rassmetr+Ludi+Sred+Big,data=datasets2)
summary(zeni)
confint(zeni)
anova(zeni1)
zeni<-lm(Zena~Magas+Rassmetr+Ludi+Sred+Big,data=datasets2)
durbinWatsonTest(zeni)
bgtest(zeni)
ncvTest(zeni)
zzena<-as.data.frame(scale(datasets2))     
zen<-lm(Zena~Magas+Rassmetr+Ludi+Sred+Big,data=zzena)
coef(zen)
zenni<-lm(Zena~Magas+Rassmetr+Ludi+Big,data=datasets22)
predict(zenni)





