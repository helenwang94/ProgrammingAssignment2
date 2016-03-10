## The assignment is regarding lexical scoping and 
## caching functions that may require a long computation time. 

## caculation

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function (y) {
  x << -y
  m << -NULL
}
get <- fuction() x
setmatrix <- function(solve) m<<- solve
getmatirx <- function() m
list(set=set, get=get,
   setmatrix = setmatrix,
   getmatrix = getmatrix)
}
## cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m<-x$getmatrix()
        if(!is.null(m)) {
         message("getting cached data")
         return(m)
}
matrix <- x$get()
m <- solve (matrix,...)
x$setmatrix(m)
m
}
