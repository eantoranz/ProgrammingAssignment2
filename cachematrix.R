## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invertValue <- NULL
        
        setMatrix <- function(y) {
            x <<- y
            invertValue <<- NULL
        }
        getMatrix <- function() x
        setInvert <- function(invert) invertValue <<- invert
        getInvert <- function() invertValue
        list(setMatrix = setMatrix, getMatrix = getMatrix, setInvert = setInvert, getInvert = getInvert)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        cache <- x$getInvert()
        if (!is.null(cache)) {
            message("Getting value from cache")
            return(cache)
        }
        # cache was not set so we need to save it
        invert <- solve(x$getMatrix(), ...)
        x$setInvert(invert)
        # return invert
        invert
}
