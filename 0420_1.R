# 코드 5-9
dim(iris)
nrow(iris)
ncol(iris)
colnames(iris)
head(iris)
tail(iris)

# 코드 5-10
str(iris)
iris[,5]
levels(iris[,5])  # factor가 아니면 unique로 하면 된다.
table(iris[,"Species"])

# p.175 확인문제
head(sleep, 10)
tail(sleep, 8)
dim(sleep)
nrow(sleep)
ncol(sleep)
colnames(sleep)

iris[,1:2]
head(iris[,1:2])

iris[,c(1,3,5)]
head(iris[,c(1,3,5)])

iris[,c("Sepal.Length", "Species")]
iris[1:5,]
iris[1:5, c(1,3)]

# random으로 추출하기
n1 <- nrow(iris)

sample(150, 10, replace=F)

sample(45, 6, replace=F)
sample(n1, 10, replace = F)
iris[sample(n1, 10, replace = F),]

# 마지막 데이터 10개 가져오기
n1 <- nrow(iris)
iris[(n1-9):n1,]
iris[141:150,]
tail(iris,10)

# p.170
kcal <- c(514, 533, 566)
na <- c(917, 853, 888)
fat <- c(11, 13, 10)
menu <- c('새우', '불고기', '치킨')

burger <- data.frame(kcal, na, fat, menu)

rownames(burger) <- c('M', 'L', 'B')
burger['M', 'na']
burger['M',]
burger[,'kcal']
burger[c('M','B'),'menu']

burger['M', -c(1,4)]
burger

cars
head(cars)
ls(cars)

N2 <- nrow(cars)

N3 <- cars[sample(N2, 10, replace=F),]
N3
# 영가설 = 귀무가설
# 연구가설 = 대립가설

# 독립(x)/종속(y)

# 회귀식
# lm(y~x, data)

cars_lm <- lm(dist~speed, cars)

summary(cars_lm)
plot(cars_lm)

## 178 subset

# 변수명 전체 삭제
rm(list=ls())

# iris를 iris_m으로 할당
iris_m <- iris

## 소문자로 변경
names(iris_m) <- tolower(names(iris_m))
ls(iris_m)

unique(iris_m$species)

iris_vi <- subset(iris_m, species == 'virginica') ; iris_vi

head(iris_vi)

# sepal.width 3.0 이상, petal.width 2.0 이상

subset(iris_m, sepal.width >= 3.0 & petal.width >= 2.0)

# sepal.width 3.0 이상이거나 petal.width 2.5 이상
subset(iris_m, sepal.width >= 3.0 | petal.width >= 2.5)

# 파이프라인 쓰려면 tidyverse 필요.
# install.packages("tidyverse")
library(tidyverse)
tidyverse_update()  # 업데이트

# 파이프 라인 단축키 ctrl+shift+m

iris_vi %>% filter(sepal.width>=3.0 & petal.width>=2.0) %>%  head(3)

a <- matrix(1:20, 4, 5);a
b <- matrix(21:40, 4, 5)
b
2*a
a+b

head(mtcars)
subset(mtcars, hp>=100 & hp<200)

class(mtcars)
# is 데이터 속성 확인 T/F
is.array(mtcars)
is.data.frame(mtcars)
# factor as.factor
is.factor(iris$Species)
str(iris)

# p.183 5-16
state.x77
str(state.x77)
View(state.x77)
is.matrix(state.x77)
as.data.frame((state.x77))

iris_matrix <- iris[,-5]
str(iris_matrix)  
# 매트릭스로 변환
iris_matrix1 <- as.matrix(iris_matrix)

class(trees)
str(trees)

gi_mean <- mean(trees$Girth)
candidate <- subset(trees, Girth>=gi_mean&Height>80&Volume>50)

# 파이프라인 filter로 변경
trees %>% filter(Girth>=gi_mean&Height>80&Volume>50)

# p.189-191
install.packages('reshape2')
library(reshape2)
tips

is.matrix(tips)
class(tips)

head(tips)

str(tips)

table(tips$day)

dinner <- subset(tips, time=='Dinner')
lunch <- subset(tips, time=='Lunch')

table(dinner$day)

table(lunch$day)

colMeans(dinner[c('total_bill', 'tip', 'size')])
colMeans(lunch[c('total_bill', 'tip', 'size')])

tip.rate <- tips$tip/tips$total_bill
mean(tip.rate)

sex <- c('M', 'F', NA, 'M', 'F')
score <- c(5, 4, 3, 4, NA)

df <- data.frame(sex, score)
is.na(df)

df <- data.frame(sex = c("M", "F", NA, "M", "F"),
                 score = c(5, 4, 3, 4, NA))
df

table(df$sex)
table(is.na(df$sex))  # NA 유무 확인 is.na, NA 존재하면 T
table(is.na(df$score))

sum(df$score, na.rm=T)

# 원본 자료를 백업
df_naomit <- df
df_naomit <- na.omit(df_naomit)  # NA값이 존재하면 그 행은 생략
df_naomit

# score와 sex 값 중 NA 없는 값만 추출
na_df <- df %>% filter(!is.na(score) & !is.na(sex))
na_df
