install.packages("robustbase")
library(robustbase)
data1 <- read.csv("E:/CurrentCourses/ECO412A/DATA/2wayfixedeffects.csv")
SERdataFX1 <- data1[data1$Imp_Value!=0 & data1$Distance!=0,]
fit <- lm(Log_Imports ~ Log_GDP_Imp + Log_GDP_Exp + Log_Dist + Log_NTB_Imp + Log_NTB_Exp + Log_Tariff + LL + COB + CPTPP_TC + CPTPP_TD1 + CPTPP_TD2  + IMP_1 + IMP_2 + IMP_3 + IMP_4 + IMP_5 + IMP_6 + IMP_7 + IMP_8 + IMP_9 + IMP_10 + IMP_11 + IMP_12 + EXP_1 + EXP_2 + EXP_3 + EXP_4 + EXP_5 + EXP_6 + EXP_7 + EXP_8 + EXP_9 + EXP_10 + EXP_11 + EXP_12, data = SERdataFX1)
summary(fit)
