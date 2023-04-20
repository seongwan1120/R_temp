1+1

a <- 1
a
b <- "seongwan"
b
c <- "what's", "up"
c <- "what's"
b <- c("seongwan", "jeong")
c <- c("I", "am") ; c
# 1~5까지 저장
d <- 1:5 ; d
e <- c(2, 4, 3, 9)
# a라는 변수 삭제
# rm(변수)
rm(a)
a
rm(c)
c <- d
rm(d)
# 변수 전체를 삭제
rm(list=ls())
# <- 단축키 alt+-, ctrl+l은 console창 clear
x <- c(2, 5, 8, 10)

# 그래프를 그리는 시각화 패키지, 한 컴퓨터에 한 번만 설치.
# install.packages("ggplot2")

# 라이브러리를 통해 로드 / 시작할 때마다 한다.
library(ggplot2)
qplot(x)

# 현재 실행 중인 패키지 확인하는 법

search()

# 패키지 지우는 방법
# remove.packages("ggplot2")

# search()
