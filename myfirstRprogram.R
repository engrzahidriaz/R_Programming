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
