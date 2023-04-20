rm(list=ls())
return <- c(4, 11, 5, 3, 2)
names(return) <- c("shoes", "shirt", "pants", "scarf", "belt")

d <- c(1, 4, 3, 7, 8)
d[4]
d[8]
d[-2]
d[-c(1, 3)]

sales <- c(640, 720, 680, 540)
names(sales) <- c('M1', 'M2', 'M3', 'M4')
sales

sales[3:6]
sales[-4]
sales[-c(2, 4)]

str5 <- c("Hello", "World", "is", "good!")

paste(str5, collapse="|")

x <- c("a", "a", "b", "c")
x

# 패키지 확인
search()
library(ggplot2)
search()
qplot(x)

head(mpg)
tail(mpg)
class(mpg)
nrow(mpg)
ncol(mpg)

?mpg
mpg[1:10]
qplot(data=mpg, x = cty)
qplot(data=mpg, x=drv, y=hwy)

qplot(data=mpg, x=drv, y=hwy, geom="boxplot")

qplot(data=mpg, x=drv, y=hwy, geom="boxplot", colour=drv)

??mpg

Mid_term <- c(80, 60, 70, 50, 90)

mean(Mid_term)

avg_term <- mean(Mid_term)
avg_term

이름 <- c("김지훈", "이유진", "박동현", "박완진") 
영어 <- c(90, 80, 60, 70)
수학 <- c(50, 60, 100, 20)
Mid <- data.frame(name=이름, eng=영어, math=수학)
Mid

d <- 1:9
condi <- d>5 & d<8; condi
sum(d>5)
d

english <- c(90, 80, 60,70)
math <- c(50, 60, 100, 20)
class <- c(1, 1, 2, 2)
df_midterm <- data.frame(english, math, class)
sum(df_midterm$english)
mean(df_midterm$english)

sum(df_midterm$math)
mean(df_midterm$math)

play <- c(421, 298, 254, 232, 239, 368, 465)
names(play) <- c("sun", "mon", "tue", "wed", "thu", "fri", "sat")
play

play[c(3, 5)] <- c(267, 241)
play[c("tue", "thu")] <- c(267, 241)
play[8] <- 100

play[7] <- 100
play

names(play) <- c("sun", "mon", "tue", "wed", "thu", "fri", "sat", "add")
play

customer <- c("kim", "lee", "park", "choi", "seo")
deposit <- c(5000000, 4500000, 4000000, 5500000, 6000000)
rate <- c(3.5, 3, 4, 5, 4.5)
period <- c(2,2,5,7,4)
names(deposit) <- customer
names(rate) <- customer
names(period) <- customer
who <- 'kim'
sum <- deposit[who] * (1+rate[who]/100)^period[who]
sum

sum <- deposit[customer] * (1+rate[customer]/100)^period[customer]
sum

df <- data.frame(customer, deposit, rate, period)
df

df_midterm$report <- c("A", "B", "A", "A")

df_midterm

english[2] <- 100
df_midterm
df_midterm$english[2] <- 100
df_midterm

# table() report 집계
table(df_midterm$report)
# sort() 영어점수 오름차순
sort(df_midterm$english)
# math 내림차순
sort(df_midterm$math, decreasing=T)

x <- c(5, 2, 3, NA, 6, 9, 8, NA, 11, 7)
y1 <- sum(x, na.rm = T)
y1
y2 <- sum(x, na.rm = FALSE)
y2

a <- 1:12
b <- "월"
c <- paste(a, b, sep="")
c

score <- "score."
num1 <- 1:10
score.num <- paste(score, num1, sep="")
score.num
num2 <- c(68, 95, 83, 76, 90, 80,85, 91, 82, 70)
score.num
score.num <- num2
score.num

sales <- c(750, 740, 760, 680, 700, 710, 850, 890, 700, 720, 690, 730)
names(sales) <- paste(1:12, '월', sep='')
sales

sales['7월']
sales['1월'] + sales['2월']
max.month <- sort(sales, decreasing=T)
max.month[1]
sum(sales[1:6])
