# P.112~113

# 01
a <- 7
b <- 9
c <- a*b ; c

# 02
a <- 90
b <- 60
c <- 80
d <- 360 - a - b - c
d

# 03
a <- 4
b <- 3
s <- (a*b)/2
s

# 04
v1 <- 20
v2 <- 30
avg <- 60/v1 + 60/v2
avg

# 05
sugar <- 25
water <- 125
percent <- sugar/(sugar+water)*100
print(percent)

# 06
v <- c(92, 43, 55, 28, 19)

# 07
v1 <- c("cyan", "magenta", "yellow", "black")
v2 <- c(TRUE, FALSE, TRUE)
v3 <- c(37.5, 8.2, 9.6, 11.8, 24.9)

# 08
v <- c(1, 2, 3, 4)
sum(v)

# 09
v1 <- c('T', 'T', 'T', 'F', 'T', 'F', 'F', 'T', 'T', 'F')
v2 <- c(T, T, T, F, T, F, F, T, T, F)
sum(v1)
sum(v2)

# 10
sum(1:5000)

# 11
even <- seq(2, 100, 2) ; sum(even)

# 12
d <- 1:100
odd <- d[seq(1, 100, 2)]
odd[-c(41:50)]
pick <- odd[c(3, 7, 32)] ; pick
names(pick) <- c('3rd', '7th', '32th') ; pick  
pick[c('3rd', '32th')]  # 항목 이름은 -가 안 된다.
pick["3rd"] <- 3

# csv 파일 불러오기
rm(list=ls())

getwd()
dir()
exam <- read.csv("C:/Users/jswbe/R_TEMP/wan/data/csv_exam.csv")
exam
exam[exam$math >= 80,]
exam[exam$class == 1,]

# 1반이거나 2반
exam[exam$class == 1 | exam$class == 2,]
# 1반이면서 수학 점수 80점 이상
exam[exam$class == 1 & exam$math >= 50,]

bt <- c("A", "B", "B", "O", "AB")
class(bt)
bt.new <- factor(bt)

class(bt.new)

bt.new[2] <- "O"
bt.new

num2 <- c(1, 2, 3, 5, "9")
num3 <- as.numeric(num2)
num4 <- as.character(num3)
num4

bt.new.num <- as.integer(bt.new)
bt.new
bt.new.num

var1 <- c(1, 2, 3, 1, 2)
var2 <- factor(c(1, 2, 3, 1, 2))

var1

var2

var1 + 2
var2 + 2

levels(var1)
levels(var2)

class(mpg$drv)

mpg$drv <- as.factor(mpg$drv)
class(mpg$drv)

levels(mpg$drv)

# 데이터 프레임 생성. <-은 한 번만 쓸 수 있다.
x1 <- data.frame(var1=c(1,2,3), 
                 var2=c("a","b","c"))

x1
str(x1)
class(x1)
nrow(x1)
ncol(x1)

x2 <- matrix(c(1:12), ncol=2)
x2

class(x2)
 