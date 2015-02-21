## Assignment: Caching the Inverse of a Matrix
## Matrix inversion is usually a costly computation 
## The objective assignment is to cache the inverse 
## of a matrix rather than computing it repeatedly

## These two functions cache the inverse of a matrix.

## makeCacheMatrix function
## This function creates a special "matrix" object 
## that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

  ## invFunc stores the cached inverse matrix
  
  invFunc <- NULL             ## init invFunc and set to NULL
  
  
  ## sets the value of the matrix
  set <- function(y) {        ## create set function to store the matrix values from cache
    x <<- y                   ## store matrix in x
    invFunc <<- NULL          ## init invFunc and set to NULL
  }
  
  
  get <- function() x         ## create function to get the value of the matrix
  
  ## sets the value of the inverse
  setinverse <- function(solve) invFunc <<- solve
  
  ## gets the value of the inverse
  getinverse <- function() invFunc
  
  ## generate the matrix list
  list(set = set, get = get,setinverse = setinverse,getinverse = getinverse)
  
}


## cacheSolve function returns the inverse of the matrix. 
## if cached value is available then return it
## if not, inverse, store, and return the value.

cacheSolve <- function(x, ...) {
  
  invFunc <- x$getinverse()   ## Return a matrix that is the inverse of 'x'
  
  if(!is.null(invFunc)) {     ## Check to see if 'invFunc' is null
    
    ## if not NULL then print message & invFunc value
    message("retrieve the cache:")
    return(invFunc)
  }
  
  data <- x$get()             ## x$get() function to get matrix values
  invFunc <- solve(data)      ## use the solve function to invert
  x$setinverse(invFunc)       ## call x$setinverse function 
  invFunc                     ## return invFunc values
}





