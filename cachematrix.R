## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# To make matrix that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  n <- NULL
  set <- function(y) {
    x <<- y
    n <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) n <<- inverse
  getinverse <- function() n
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## Write a short comment describing this function
# To inverse the matrix made above
cacheSolve <- function(x, ...) {
  n <- x$getinverse()
  if (!is.null(n)) {
    message("cached data")
    return(n)
  }
  data <- x$get()
  n <- solve(data, ...)
  x$setinverse(n)
  i
}
