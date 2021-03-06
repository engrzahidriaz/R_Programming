

#----------- Data Types and Basic Operations -------------
# ------------ Objects ----------

# Attributes
a = 5
class(a)
a = 5L
class(a)

# Numbers
1/0
1/Inf
0/0

# Entering Input
6 -> x
x
print(x)
msg <- "hello"
msg
y  <- 1:20 # 1 to 20 numbers
y

#--------- Creating Vectors ------------

m <- 1:10
m
dim(m) <- c(2,5)
m
dim(m)
attributes(m)

# ----------- Matrix ------------

l <- matrix(nrow = 2, ncol = 3)
l
l <- matrix(1:6, nrow = 2, ncol = 3)
l
v <- 1:3
w <- 10:12
cbind(v, w) # v is first col and w is second
rbind(v, w) # v is first row and w is second

# -------------- List --------------

s <- list(2, "name", TRUE, 1 + 2i)   # list can contain differentclasses but vector can never
s

# -------------- factors ---------------

f <- factor(c('Pujab','kpk','kpk','sindh','punjab'))
f
unclass(f)
table(f)
g <- factor(c('Mon','Tue','wed','Thr','Fri','Str','Sun'))
g
unclass(g)
g <- factor(c('Mon','Tue','wed','Thr','Fri','Str','Sun'), levels = c('Mon','Sun'))
g

# ---------- Missing Values -------------

h <- c(1, 2, 3, NA, NaN, 4, NaN)
is.na(h)
is.nan(h)

# ----------------- Data Frame ----------------

k <- data.frame(day = 1:4, rain = c(T, T, F, F))
k
nrow(k)
ncol(k)
p <- 1:3
p

# names
names(p)
names(p) <- c('col_A', 'col_B', 'col_C' ) 
p
names(p)
r <- list(a=1, b=2, c=3)
r
t <- list(a=1:5, b='ID', c=c('fname','lname'))
t
t$c
t$a
?read.table

# ------------------ Subset ----------------------

# for vector
e <- c('a','b','c','c','d','a')
e
e[1]
e[1:4]
e[e >'b']
u <- e > 'b'
u
e[u]

# for Matrix
d <- matrix(1:6, 2,3)
d
d[1,2]
d[2,3]
d[1,]
d[,2]
d
d[1,2, drop=FALSE]
d[1, , drop=FALSE]

# for list
c <- list(weekday= 1:4,rain_bow= 0.6)
c[1]
c[2]
c[[1]]
c$rain_bow
c[['rain_bow']]
c['rain_bow']
c <- list(weekday= 1:4,rain_bow= 0.6, item= 'Umbrella')
c[c(1,3)]
name <- 'weekday'
c[name]
c$name
c$weekday
c <- list(a = list(10, 12, 14), b = c(3.14, 2.81))
c[[c(1,3)]]
c[[1]][[3]]
c[[c(2,1)]]

# ----------------- Removing NA Values -------------------

x <- c(1, 2, 4, NA, 6, NA)
x
is.na(x)
bad <- is.na(x)
bad
!bad
x[!bad]
x <- c(1, 2, NA, 6, NA, 7)
y <- c('a','b', NA,'d',NA,'f')
good <- complete.cases(x,y)
good
x[good]
y[good]

airquality
View(airquality)
a <- airquality
airquality[1:6,]
good <- complete.cases(airquality)
good
airquality[good,][1:6,]

# ------------------- Control Structure -------------------

# if/else condition
x <- 4
y <- 0
if (x > 5){
  y <- 10
} else {
  y <- 0
}

y <- if (x > 3) {
  10
} else {
  0
}

# for loop
for (i in 1:4){
  print(i)
}

#for loop for vector
x <- c('a','b','c','d')
for (i in 1:4){
  print(x[i])
}

for (i in seq_along(x)){
  print(x[i])
}

for (letter in x){
  print(letter)
}

for (i in 1:4) print(x[i])

# for loop for matrix
y <- matrix(1:6, 2,6)
for (i in seq_along(nrow(y))){
  for (j in seq_along(ncol(y))){
    print(y[i,j])
  }
}

# while loop
count <- 0
while(count < 10){
  print(count)
  count <- count +1
}

z <- 5
while(z >= 3 && z <= 10) {
  print(z)
  coin <- rbinom(1, 1, 0.5)
  if(coin == 1) {
    z <- z + 1
  } else {
    z <- z - 1
  }
}

# ---------------------- Functions ---------------------------

mydata <- rnorm(100)
mydata
sd(mydata)
sd(x = mydata)
sd(x = mydata, na.rm = FALSE)
sd(na.rm = FALSE, x = mydata)
sd(na.rm = FALSE, mydata)

args(lm)

mydata <- data.frame(x=rnorm(100), 
                     y=rnorm(100))
lm(y ~ x, mydata, model = FALSE)

lm(data=mydata, y~x, model = FALSE, 1:100)

f <- function(a, b = 1, c = 2, d = NULL) {
}  
f(a)
f(c)

f <- function(a, b) {
  a^2
} 
f(2)
f(4)
f(2,)

f <- function(a, b){ 
  print(a)
  print(b)
} 
f(45)
f(45,)
f(,45)

#------------------------ Vectorized Operation -------------------

x <- 1:4; y <- 6:9
x
y
x + y
x > 2
x >= 2
y == 8
x * y
x / y

x <- matrix(1:4, 2, 2); y <- matrix(rep(10, 4), 2, 2)
x
y
x * y
x / y
x %*% y    # true matrix Multiplication

#------------------------ Date and Time -----------------

as.Date('1970-01-01')
as.POSIXct('1970-01-01')
as.POSIXlt('1970-01-01')

x <- Sys.time()
x
p <- as.POSIXlt(x)
p
names(unclass(p))
p$sec
p$mon
p$wday

x <- Sys.time()
x                   # Already in ‘POSIXct’ format
x$sec

datestring <- c("January 10, 2012 10:40",
                "December 9, 2011 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M")
x
class(x)

x <- as.Date("2012-01-01")
y <- strptime("9 Jan 2011 11:34:21", "%d %b %Y %H:%M:%S")
x-y
class(x)
class(y)
x <- as.POSIXlt(x)
x-y

x <- as.Date("2012-03-01")
y <- as.Date("2012-02-28")
x-y

x <- as.POSIXct("2012-10-25 01:00:00")
y <- as.POSIXct("2012-10-25 06:00:00", tz = "GMT")
y-x
x

#------------------------ Loop Function -------------------

# lapply
x <- list(a = 1:5, b = rnorm(10))
x
class(x)
lapply(x, mean)
mean(x$a)

x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1),
          d = rnorm(100, 5))
x
lapply(x, mean)
lapply(x, sd)
lapply(x, sum)

?runif
x <- 1:4
runif(1)
runif(2)
lapply(x, runif)
lapply(x, runif, min=0, max=10)
lapply(x, runif, min=50, max=100)

# sapply
x <- list(a = 1:4, b = rnorm(10), c = rnorm(20, 1), d = rnorm(100, 5))
x
lapply(x, mean)
sapply(x, mean)
sapply(x, sd)
mean(x)

# apply
x <- matrix(rnorm(50), 5, 10)
apply(x, 2, mean)                     # for Col
apply(x, 1, mean)                     # for row

rowSums(x)
rowMeans(x)
colSums(x)
colMeans(x)

?quantile
apply(x, 1, quantile)
apply(x, 1, quantile, probs = c(0.25, 0.75))

?gl
x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)
f
tapply(x, f, mean)
tapply(x, f, mean, simplify = FALSE)
tapply(x, f, range)

# ----------------------------- Data Split ---------------------

x <- c(rnorm(10), runif(10), rnorm(10, 1))
f <- gl(3, 10)
split(x, f)

lapply(split(x, f), mean)

library(datasets)
head(airquality)

s <- split(airquality, airquality$Month)
lapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")]))
sapply(s, function(x) colMeans(x[, c("Ozone", "Solar.R", "Wind")],
                               na.rm = TRUE))

# ------------------------------ END ------------------------------
