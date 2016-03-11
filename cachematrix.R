## The assignment is regarding lexical scoping and 
## caching functions that may require a long computation time. 

## makeCacheMatrix function is a list of functions which set and get the matrix value.
## Also, they set the inversion of the matrix and get the inversion data.

makeCacheMatrix <- function(x = matrix()) 
{
  inv <- NULL
  set <- function(y) 
  {
    x<<-y
    inv<<-NULL
  }
  get <- function() x
  setinv <- function(inversion) inv <<- inversion
  getinv <- function() inv
  
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## cacheSolve function caches the inversion of matrix value in makeCacheMatrix function. 
## Before caching, it checks if the data is already cached in the makeCacheMatrix function.
## If it has done so, it will retrieve the same data


cacheSolve <- function(x, ...) 
{
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)) 
  {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
}
