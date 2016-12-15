## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Pretty much copied the mean function making slight changes
makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set <- function(y){
    x<<-y
    m<<-NULL
  }
  get <- function() x
  getInverse <- function() m
  setInverse <- function(solve) m <<- solve
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
#Copied the supplied mean function and made slight changes

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m <- x$getInverse()
  if(!is.null(m)){
    message('getting cached data')
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setInverse(m)
  m
}
