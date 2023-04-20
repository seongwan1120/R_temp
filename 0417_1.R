# 2일차 수업
# ctrl+2 콘솔창
# ctrl+1 스크립트
# getwd: working directory

setwd("c:/Users/jswbe/R_TEMP/wan")
getwd()

# 경로 설정 시 /는 한 번만
# \로 할 시에는 \\ 두 번

# Sys.setenv(JAVA_HOME="C:\\Program Files\\Java\\jre1.8.0_361")
# Sys.getenv("JAVA_HOME")

# 사칙연산

100+200
# temp <- iris[,5]

# 내장된 데이터 셋
head(iris)  # 상위 6개

# 제곱근
sqrt(4)  
sqrt(200)
sqrt(9)

3+(4*5)

# install.packages("rJava")
library(rJava)
# options(java.home="Library/Java/JavavirtualMachines/jdk1.8.0_361.jdk/contents/Home/jre")

## 현재 실행 중인 패키지
search()
library(ggplot2)
search()

# <- 우선순위
c = D <- 5
c

G <- E = 11

total <- 5050
total
print(total)
cat("합계: ", total)

a <- 10
b <- 20
c <- a+b
print(a)
print(b)
print(c)

num <- c(2, 5)
num
sqrt(-3)

age.1 <- 20
age.2 <- 25
print(age.1 + age.2)
name.1 <- 'John'
print(name.1)
grade.1 <- '3'
print(age.1 + grade.1)

5>3
2>7
True+True
TRUE+TRUE
a <- TRUE
b <- F
a
b
a+b

addr <- NULL
addr

a <- NA  #결측값
b <- "na"

# 변수 모두 지우기
rm(list=ls())
# 변수 하나 지울 때
rm(b)

# 전체 변수목록 확인
ls()

1/0
-2/0
sqrt(-5)

shop.name <- "R-mart"
sales.today <- 530
sales.yesterday <- 440
increase <- sales.today > sales.yesterday
increase

salt <- 50
water <- 100
result <- salt/(salt+water)*100
cat("소금 = ", salt, ", 물 = ", water, " : 농도 = ", result, "%")

a <- c(1, "2", 3, 4)
a

as.numeric(a)

score.1 <- 68; score.2 <- 95; score.3 <- 83; score.4 <- 76; score.5 <- 90 
score.6 <- 80; score.7 <- 85; score.8 <- 91; score.9 <- 82; score.10 <- 70
total <- score.1+score.2+score.3+score.4+score.5+score.6+score.7+score.8+score.9+score.10
avg <-  total/10
avg

a <- "문자"
b <- c(1, 2, 3)
c <- data.frame(a,b)
c

# 기술통계
total <- c(60, 95, 83, 76, 90, 80, 85, 91, 82, 70)

# 합계
sum(total)
mean(total)
median(total)
min(total)
max(total)
range(total)  # 최소값, 최대값
var(total)
sd(total)
plot(total)
# 요약 통계
summary(total)

weight <- c(62.5, 63, 62.5, 62, 61, 5, 62, 63)
sum(weight)
mean(weight)
median(weight)
min(weight)
max(weight)
range(weight)
var(weight)
sd(weight)
plot(weight)

table(weight)

v3 <- seq(1, 101, 3)
v3
v4 <- seq(0.1, 1.0, 0.1)
v4

v5 <- rep(1, times=5)
v5
v6 <- rep(1:5, times=3)
v6
v7 <- rep(c(1,5,9), times=3)
v7
v8 <- rep(c(3,6,9), times=5)
v8
v9 <- rep(seq(3, 9, 3), times=5)
v9
v10 <- rep(c(3, 6, 9), each=5)
v10

# sample(x,   # 표본을 뽑을 데이터 벡터. 만약 길이 1인 숫자 n이 지정되면
# 1:n에서 표본이 선택된다.
# size,  # 표본의 크기
# replace=FALSE? # 복원 추출4 여부
# 데이터가 뽑힐 가중치. 예를 들어 x=c(1, 2, 3)에서 2개의 표본을 뽑되 표본이 뽑힐 확률이
# 50%, 20%, 30%로 하고자 한다면 size=2 prob=c(5, 2, 3)을 지정한다.
# prob나 prob에 지정한  값의 합이 1일 필요는 없다.
# prob=NULL
# )

sample(1:10, 3)

# 중복 허용
sample(1:100, 20, replace=T)

sample(1:5,size=10,prob=c(1,1,1,2,5), replace=T)

sample(1:3, size=1000, prob=c(.30, .60, .10), replace=T)

# table() 비율을 확인
table(sample(1:3, size=1000, prob=c(.30, .60, .10), replace=T))

# barplot() 빈도 막대 그래프
barplot(table(sample(1:3, size=1000, prob=c(.30, .60, .10), replace=T)))

# runif(갯수, 최소값, 최대값) 난수 발생
runif(10, -1, 1)

round(runif(30, 70, 90))

m <- 11
d <- 20

((m*4)+9)*25+d

x <- 100*m+d+225

# 연습 p.70~71
# 1. 1)소스영역, 2)콘솔영역, 3)파일영역, 4)환경영역 
# 2. 1) 작업폴더 2) 연산자 3) max, F1
# 3. O, x, X
# 4. X, O, O, O
# 5. (A, D), (B, C)
# 6.
37+7  # 44
4*5-10  # 10
99/3  # 33
152%%7 # 5
5^2  # 25
2^10  # 1024
(11*4)-(13%%4)  # 43
(9-7)%%3  # 2

# 7.
num_1 <- c(20, 11, 17, 21, 19)
max(num_1)  # 21         
min(20, 11, 17, 21, 19)  # 11
abs(-20)  # 20
sqrt(25)  # 5

# 1~30까지 중복허용 데이터 5개 추출하여 DB에 저장

DB <- sample(1:30, replace=T, size=5) ; DB
# 오름차순 decreasing = F 기본값이기에 생략 가능
sort(DB)
# 내림차순
sort(DB, decreasing=T)
# 최댓값을 갖는 원소 인덱스를 출력
which.max(DB)
# 최솟값을 갖는 원소 인덱스를 출력 
which.min(DB)
# 10보다 작은 값의 원소 출력
DB[which(DB<10)]
# 20보다 크거나 같은 값의 원소
DB[which(DB>=15)]
