## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
# 1. Try to load cached data, if already generated
mtx <- m
mkey <- is.matrix(m)

#This function creates a special "matrix" object that can cache its inverse.
 set <- function(y) {
                mrx <<- y
                mtx <<- NULL
     }
          
    get <- function() mtx
    setinv <- function(mtx) 
             mtx <<- class(try(solve(mtx),silent=T))=="matrix" 
     getinv <- function() mtx
     list(set = set, get = get,
          setinv = setinv,
          getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

inv_is <- class(try(solve(m),silent=T))=="matrix"
     inv_y <- det(m) != 0  #so inverse exists
     inv_n <- cat("Matrix inverse does not exist.")
  
ifelse(inv_is,inv_y,inv_n)

makeCacheMatrix(m)

}
