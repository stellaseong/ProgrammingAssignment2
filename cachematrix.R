## Overall Description of what the Functions do
##  - Matrix inversion is usually a costly computation, so 
##  there may be some benefit to caching the inverse of a matrix
##  rather than computing it repeatedly.
##  - Below are two functions that cache the inverse of a matrix. 

## 1. makeCacheMatrix: creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {
        # m <- NULL
	  i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        # setmean <- function(mean) m <<- mean
        setinverse <- function(inverse) i <<-inverse
	  # getmean <- function() m
        getinverse <- function() i
        
	  list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}

## 2. cacheSolve: computes the inverse of the special "matrix" returned by 
##      makeCacheMatrix function.
##      - If the inverse has already been calculated(and the matrix has not changed),
##        then cacheSolve should retrieve the inverse from the cache.          
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data)
        x$setinverse(i)
        i
}