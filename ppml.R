install.packages("sjPlot")

library(gravity)
library(stargazer)
library(sjPlot)
rm(list = ls())

getwd()
setwd("E:/CurrentCourses/ECO412A/DATA/Codes")

data1 <- read.csv("PPMLDataset.csv")
ppmlmodel <- ppml(dependent_variable = "Imp_Value", distance = "Distance", additional_regressors = c("NTB_Importer", "NTB_Exporter", "Simple_Avg_Tariff", "CPTPP_TC", "CPTPP_TD1", "LL", "COB", "IMP_1", "IMP_2", "IMP_3", "IMP_4", "IMP_5", "IMP_6", "IMP_7", "IMP_8", "IMP_9", "IMP_10", "IMP_11", "IMP_12", "EXP_1", "EXP_2", "EXP_3", "EXP_4", "EXP_5", "EXP_6", "EXP_7", "EXP_8", "EXP_9", "EXP_10", "EXP_11", "EXP_12"), robust = T, method = "white1", data = data1, cluster = "Distance")
summary(ppmlmodel)
