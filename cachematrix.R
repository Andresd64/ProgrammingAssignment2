## Put comments here that give an overall description of what your
## functions do

## The function take a matrix, stores the information and caches its inverse

makeCacheMatrix <- function(x = matrix()) {
    c <- NULL
  set <- function(y) {
          x <<- y
          c <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) c <<- inverse
  getinverse <- function() c
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## That function calculate the inverse matrix of the before function 

cacheSolve <- function(x, ...) {
  c <- x$getinverse()
  if (!is.null(c)) {
          message("getting cached data")
          return(c)
  }
  data <- x$get()
  c <- solve(data, ...)
  x$setinverse(c)
  c
}
