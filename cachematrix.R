## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {##inversing a mtrix and caching it to a variable m
  m <- NULL## to cache the resulted matrix inversion
  m <-as.matrix
  set<-function(y){
    x <<- y   
    m <<- NULL
  }
  get <- function() x
  setsolve<-function(solve) m<<-solve##Inverse of x where x is a square matrix. and search for 'm' in the enclosed environment
  getsolve<-function()m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getsolve()
  if(!is.null(m)) {##if there is  cached or stored "inverse matrix"
    message("getting cached data")
    return(m)
  }
  data <- x$get()##if there is no cached /stored "inverse matrix"
  m <- solve(data, ...)##apply function to sove the given data
  x$setsolve(m)##solve(inverse) the new matrix.
  m ## cache the new inversed matrix.

}

