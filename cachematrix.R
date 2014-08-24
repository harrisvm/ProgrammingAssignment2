## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#####  function to create a sepcial matrix object that will cache its inverse
makeCacheMatrix <- function(x = matrix()) {

  i = NULL
  set <- function(y) {
  x<<- y
  i<<- NULL
  }
  get <- funtion(x)
  setinverse <- function(sole) i <<- solve
  getinverse  <- function() i
  
  list(set - set, get =get,
     setinverse = setinverse,
     getinverse = getinverse)
}


## Write a short comment describing this function
####   finds the mean of the special vecotr made with the makCcahceMatrix 
CacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   
   i<- x$getinverse()
   if(!is.null(i)) {
      message("get cahced data into buffer")
      return(i)
   }
   data <- x$get()
   i <- solve(data, ...)
   x$setinverse(i)
   i
}
