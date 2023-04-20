.libPaths()  # r의 실행 경로를 알려준다.
rm(list=ls())

# p.155 rbind 행 방향으로 합치기
x <- 1:4
y <- 5:8
z <- matrix(1:20, nrow=4, ncol=5)
x;y;z

# cbind 열 방향으로 합치기
m1 <- cbind(x, y)
m1
m2 <- rbind(x, y)
m2
m3 <- rbind(m2,x)
m3
m4 <- cbind(z, x)
m4

# p157 확인문제

v <- seq(from=5, to=60, by=5); v
a <- matrix(v, nrow=3, byrow=T)
a
b <- matrix(v, ncol=4, byrow=F)
b
c <- rbind(a, b)
c
d <- cbind(a, b)
d

local <- factor(c("서울", "경기", "부산", "강원","제주", "서울", "경기", "경기", "제주", "부산"))
local
local_m <- factor(local, levels = c("경기", "서울", "부산", "제주", "강원"))
local_m
plot(local_m)

gender <- factor(c("남자", "여자", "여자", "남자", "남자", "여자", "여자"))
gender
plot(gender)

gender_m <- factor(gender, levels = c("여자", "남자"))
plot(gender_m)

z <- matrix(1:20, nrow=4, ncol=5)
z                   

z[2, 1:3]
z[1, c(1, 2, 4)]
z[1:2,]
z[,c(1,4)]

m5 <- seq(1, 23, 2)
m5

score <- matrix(c(90, 85, 69, 78, 85, 96, 49, 95, 90, 80, 70, 60), nrow=4)
score

rownames(score) <- c('John', 'Tom', 'Mark', 'Jane')
colnames(score) <- c('English', 'Math', 'Science')
score

burger <- matrix(c(514, 917, 11, 533, 853, 13, 566, 888, 10), nrow=3, byrow=T)
burger
rownames(burger) <- c('M', 'L', 'B')
colnames(burger) <- c('kcal', 'na', 'fat')
burger

df1 <- c(1,5,4,8,7)
df2 <- c("서울", "경기", "강원", "제주", "인천")
df3 <- c(90, 70, 85, 55, 80)

# 개수, 평균, 표준편차(난수)
r_vec <- round(rnorm(10, 40, 5))
r_vec

h.list <- c('bowling', 'tennis', 'ski')
person <- list(name='Tom', age=25, student=TRUE, hobby=h.list)

person
person$name
person[[1]]
person[[3]]
person[[4]]
person[[4]][1]

day <- c('Tue', 'Wed', 'Sat')
oneday_class <- list(class='sun_catcher', day=day, price=60000, parking=TRUE)
oneday_class

cafe <- list(espresso=c(4, 5, 3, 6, 5, 4, 7),
             americano=c(63, 68, 64, 68, 72, 89, 94),
             latte=c(61, 70, 59, 71, 71, 92, 88),
             price=c(2.0, 2.5, 3.0),
             menu=c('espresso', 'americano', 'latte'))
cafe$menu <- factor(cafe$menu)
class(cafe$menu)
names(cafe$price) <- cafe$menu
sale.espresso <- cafe$price['espresso']*cafe$espresso
sale.americano <- cafe$price['americano']*cafe$americano
sale.latte <- cafe$price['latte']*cafe$latte

sale.day <- sale.espresso+sale.americano+sale.latte
names(sale.day) <- c('Mon', 'Tue', "Wed", 'Thu', 'Fri', 'Sat', 'Sun')
sum(sale.day)
sale.mean <- mean(sale.day)
names(sale.day[sale.day>=sale.mean])
names(sale.day)

rm(list=ls())
names(cafe$price) <- cafe$menu
names(cafe$price)

# rnorm() 100개의 데이터를 평균 80, 편차 10 / 정수 round()로 표현
# rnorm_D로 저장
rnorm_D <- round(rnorm(100, 80, 10))
# 평균
mean(rnorm_D)
# 합계
sum(rnorm_D)
# 최대, 최소, 표준편차 sd()
max(rnorm_D); min(rnorm_D); sd(rnorm_D)
# 중앙값
median(rnorm_D)
# 범위(최소, 최대)
range(rnorm_D)
# head 상위 10개
head(rnorm_D, 10)
# tail 하위 10개
tail(rnorm_D, 10)
# length() 값들의 개수
length(rnorm_D)

length(rnorm_D[rnorm_D>=100])
length(rnorm_D[rnorm_D<80])

accident <- c(31, 26, 42, 47, 50,54, 70, 66, 43, 32, 32, 22)
names(accident) <- c('M1', 'M2', 'M3', 'M4', 'M5', 'M6', 'M7', 'M8', 'M9', 'M10', 'M11', 'M12')
accident
sum(accident)
max(accident)
min(accident)
accident*0.9
accident[accident>=50]
month.50 <- accident[accident>=50]
# month.50 excel month_50.csv
# write.csv(data,"../data/mon.csv")
month_50 <- month.50

write.csv(month_50,"../data/month_50.csv", row.names=F)

m_csv <- read.csv("../data/month_50.csv")

m_csv

View(m_csv)  # 앞글자는 대문자.

names(month.50)
names(accident[accident>=50])
length(accident[accident<50])
M6.acc <- accident[6]
accident[accident>M6.acc]
accident[accident > accident[6]]

# 최대값의 이름 표시
which.max(accident)

# 최대값 이름만 표시
names(accident[which.max(accident)])

# 최소값 이름만 표시
names(accident[which.min(accident)])

favorite <- factor(c("여름", "봄", "여름", "겨울", "봄", "겨울", "여름", "여름", "봄", "가을"))
class(favorite)

levels(favorite)

favorite <- factor(favorite, levels=c("봄", "여름", "가을", "겨울"))

levels(favorite)

a <- 25:150
condi <- (a%%3 == 0) & (a <100)
table(condi)
sum(condi)

a <- c('good', 'great', 'bad', 'okay', 'good', 'bad', 'good')
f <- factor(a)
class(f)
levels(f)

rm(list=ls())

country <- factor(c("호주", "독일", "영국", "일본", "미국", "중국", "호주", "영국", "중국", "일본", "터키", "미국", "중국", "중국", "호주", "터키", "독일", "일본", "중국", "독일"))
levels(country)
as.integer(country)

post <- list(user_id='mr_steve',
             post_id='p11010',
             view=37,
             image=FALSE,
             like=c('creeper', 'alex', 'skeleton', 'enderman'))
post

?iris
??iris

iris
head(iris,6)
dim(iris)

unique(iris$Species)
class(iris)
str(iris)

unique(iris$Sepal.Width)

iris_4 <- iris[,1:4]
View(iris_4)

#apply(데이터, 열, 함수)
apply(iris_4, 2, sum)
apply(iris_4, 2, sd)

#apply(데이터, 행, 함수)
apply(iris_4, 1, mean)
