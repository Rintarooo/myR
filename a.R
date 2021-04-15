getwd()
% print working dir

data_1 <- read.csv("./5_1_income.csv", header = TRUE, sep = ",")
data_1
reg1 <- lm(income ~ yeduc, data = data_1)
summary(reg1)
yeduc<-data_1[,1]
income<-data_1[,2]
ls()
plot(yeduc, income, xlab = "yeduc", ylab = "income")
abline(reg1)