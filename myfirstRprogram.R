a = 5
class(a)
a = 5L
class(a)
1/0
1/Inf
0/0
x -> 6
6 -> x
x
print(x)
msg <- "hello"
msg
y  <- 1:20 # 1 to 20 numbers
y
m <- 1:10
m
dim(m) <- c(2,5)
m
dim(m)
attributes(m)
l <- matrix(nrow = 2, ncol = 3)
l
l <- matrix(1:6, nrow = 2, ncol = 3)
l
v <- 1:3
w <- 10:12
cbind(v, w) # v is first col and w is second
rbind(v, w) # v is first row and w is second
s <- list(2, "name", TRUE, 1 + 2i)   # list can contain differentclasses but vector can never
s
f <- factor(c('Pujab','kpk','kpk','sindh','punjab'))
f
unclass(f)
table(f)
g <- factor(c('Mon','Tue','wed','Thr','Fri','Str','Sun'))
g
unclass(g)
g <- factor(c('Mon','Tue','wed','Thr','Fri','Str','Sun'), levels = c('Mon','Sun'))
g
h <- c(1, 2, 3, NA, NaN, 4, NaN)
is.na(h)
is.nan(h)
k <- data.frame(day = 1:4, rain = c(T, T, F, F))
k
nrow(k)
ncol(k)
p <- 1:3
p
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
