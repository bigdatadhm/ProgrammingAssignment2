## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(mInicial = matrix()) {
        mInversa <- NULL
        set <- function(y) {
                mInicial <<- y
                mInversa <<- NULL
        }
        get <- function() mInicial 
        setInversa <- function(matriz) mInversa <<- matriz
        getInversa <- function() mInversa
        list(set = set, get = get,
             setmean = setInversa,
             getmean = getInversa)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mInversa <- x$getInversa()
        if(!is.null(mInversa)) {
                message("getting cached data")
                return(mInversa)
        }
        mInicial <- x$get()
        mInversa <- solve(mInicial, ...)
        x$setmean(mInversa)
        minversa
}
