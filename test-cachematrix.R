## Test code
x = rbind(c(1, -0.25), c(-0.25, 1))
m = makeCacheMatrix(x)
m$get()

## 1st run with nothing in the cache
cacheSolve(m)

## 2nd run retrieving values from the cache
cacheSolve(m)
