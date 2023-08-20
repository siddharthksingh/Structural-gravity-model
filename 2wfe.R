data1 <- read.csv("E:/CurrentCourses/ECO412A/DATA/2wayfixedeffects.csv")
SERdataFX1 <- data1[data1$Imp_Value!=0 & data1$Distance!=0,]
install.packages("estimatr")
library(estimatr)
reg3 <- lm_robust(log(Imp_Value) ~ log(Distance)+ log(NTB_Importer) + log(NTB_Exporter) + log(Simple_Avg_Tariff), cluster = Distance, data = SERdataFX1, se_type = "stata")
summary(reg3)
