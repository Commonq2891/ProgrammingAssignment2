## This assignment is about solving the inverse of a matrix by using the lexical scope
# of a function called "makeCacheMatrix" and "cacheSolve". 

## The function makeCacheMatrix is a function that creates a matrix and cache its inverse 

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse)inv <<- inverse
        getInverse <- function() inv
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## cacheSolve computes the inverse of the matrix returned by the makeCacheMatrix. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        } 
        data <- x$get()
        inv <- solve(data, ...)
        x$setInverse(inv)
        inv
}
