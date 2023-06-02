my_data <- read.csv(file.choose()) 
my_data$Filter <- as.factor(my_data$Filter)



res.aov2 <- aov(Avg ~ C(Topic) * C(Filter), data = my_data)
summary(res.aov2)

TukeyHSD(res.aov2)
