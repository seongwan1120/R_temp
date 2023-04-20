.libPaths()  # r�� ���� ��θ� �˷��ش�.
rm(list=ls())

# p.155 rbind �� �������� ��ġ��
x <- 1:4
y <- 5:8
z <- matrix(1:20, nrow=4, ncol=5)
x;y;z

# cbind �� �������� ��ġ��
m1 <- cbind(x, y)
m1
m2 <- rbind(x, y)
m2
m3 <- rbind(m2,x)
m3
m4 <- cbind(z, x)
m4

# p157 Ȯ�ι���

v <- seq(from=5, to=60, by=5); v
a <- matrix(v, nrow=3, byrow=T)
a
b <- matrix(v, ncol=4, byrow=F)
b
c <- rbind(a, b)
c
d <- cbind(a, b)
d

local <- factor(c("����", "���", "�λ�", "����","����", "����", "���", "���", "����", "�λ�"))
local
local_m <- factor(local, levels = c("���", "����", "�λ�", "����", "����"))
local_m
plot(local_m)

gender <- factor(c("����", "����", "����", "����", "����", "����", "����"))
gender
plot(gender)

gender_m <- factor(gender, levels = c("����", "����"))
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
df2 <- c("����", "���", "����", "����", "��õ")
df3 <- c(90, 70, 85, 55, 80)

# ����, ���, ǥ������(����)
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

# rnorm() 100���� �����͸� ��� 80, ���� 10 / ���� round()�� ǥ��
# rnorm_D�� ����
rnorm_D <- round(rnorm(100, 80, 10))
# ���
mean(rnorm_D)
# �հ�
sum(rnorm_D)
# �ִ�, �ּ�, ǥ������ sd()
max(rnorm_D); min(rnorm_D); sd(rnorm_D)
# �߾Ӱ�
median(rnorm_D)
# ����(�ּ�, �ִ�)
range(rnorm_D)
# head ���� 10��
head(rnorm_D, 10)
# tail ���� 10��
tail(rnorm_D, 10)
# length() ������ ����
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

View(m_csv)  # �ձ��ڴ� �빮��.

names(month.50)
names(accident[accident>=50])
length(accident[accident<50])
M6.acc <- accident[6]
accident[accident>M6.acc]
accident[accident > accident[6]]

# �ִ밪�� �̸� ǥ��
which.max(accident)

# �ִ밪 �̸��� ǥ��
names(accident[which.max(accident)])

# �ּҰ� �̸��� ǥ��
names(accident[which.min(accident)])

favorite <- factor(c("����", "��", "����", "�ܿ�", "��", "�ܿ�", "����", "����", "��", "����"))
class(favorite)

levels(favorite)

favorite <- factor(favorite, levels=c("��", "����", "����", "�ܿ�"))

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

country <- factor(c("ȣ��", "����", "����", "�Ϻ�", "�̱�", "�߱�", "ȣ��", "����", "�߱�", "�Ϻ�", "��Ű", "�̱�", "�߱�", "�߱�", "ȣ��", "��Ű", "����", "�Ϻ�", "�߱�", "����"))
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

#apply(������, ��, �Լ�)
apply(iris_4, 2, sum)
apply(iris_4, 2, sd)

#apply(������, ��, �Լ�)
apply(iris_4, 1, mean)