covid_data <- read.csv('D:/covid data.csv')
attach(covid_data)
View(covid_data)
str(covid_data)

Africa <- covid_data$TOTAL_VACCINATIONS_PER100[1:47]
America <- covid_data$TOTAL_VACCINATIONS_PER100[48:98]
Em <- covid_data$TOTAL_VACCINATIONS_PER100[99:119]
Europe <- covid_data$TOTAL_VACCINATIONS_PER100[120:178]
SEA <- covid_data$TOTAL_VACCINATIONS_PER100[179:188]
WP <- covid_data$TOTAL_VACCINATIONS_PER100[189:223]
length(Africa);mean(Africa);sd(Africa)
length(America);mean(America);sd(America)
length(Em);mean(Em);sd(Em)
length(Europe);mean(Europe);sd(Europe)
length(SEA);mean(SEA);sd(SEA)
length(WP);mean(WP);sd(WP)

Africa <- covid_data$Deaths_cumulative.total[1:47]
America <- covid_data$Deaths_cumulative.total[48:98]
Em <- covid_data$Deaths_cumulative.total[99:119]
Europe <- covid_data$Deaths_cumulative.total[120:178]
SEA <- covid_data$Deaths_cumulative.total[179:188]
WP <- covid_data$Deaths_cumulative.total[189:223]
length(Africa);mean(Africa);sd(Africa)
length(America);mean(America);sd(America)
length(Em);mean(Em);sd(Em)
length(Europe);mean(Europe);sd(Europe)
length(SEA);mean(SEA);sd(SEA)
length(WP);mean(WP);sd(WP)

boxplot(Death_cumulative.total~WHO.Region,data=covid_data,col="red")
one_way <- aov(Death_cumulative.total~WHO.Region,data=covid_data)
summary(one_way)
TukeyHSD(one_way)
plot(TukeyHSD(one_way, "WHO.Region"))
reg <- lm(TOTAL_VACCINATIONS_PER100~WHO.Region,data=covid_data)
summary(reg)
anova(reg)

plot(TOTAL_VACCINATIONS_PER100,Death_cumulative.total,pch=16,col="Navyblue")
cor.test(TOTAL_VACCINATIONS_PER100,Death_cumulative.total)
summary(Death_cumulative.total,TOTAL_VACCINATIONS_PER100)


