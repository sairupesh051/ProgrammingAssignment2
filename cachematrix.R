## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        a <- NULL
set <- function(y) {
x <<- y
a <<- NULL
}

get <- function() x
setin <- function(inverse) a <<- inverse
getin <- function() a
list(set = set,
get = get,
setin = setin,
getin = getin)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        z <- x$getinverse()
        if (!is.null(z))
        {
                message("getting cached data")
                return(z)
        }
        data <- x$get()
        z <- solve(data, ...)
        x$setinverse(z)
        z
}
        ## Return a matrix that is the inverse of 'x'
}
