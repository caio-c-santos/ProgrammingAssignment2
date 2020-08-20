## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


## Write a short comment describing this function
## Return a matrix that is the inverse of 'x'
###calculates the inverse matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv() #retrives m from makeCacheMatrix
        if(!is.null(m)){ # Checks to see if there is a cached matrix computed
          message("getting cached data")
          return(m) # retrieves m from 
        }
        data <-x$get() # stores values from get as data
        m <- solve(data) %*% data ## calculates the inverse matrix
        x$setinv(m) # stores the value of m by calling function stored in setinv
        m ## prints inverse matrix
}

