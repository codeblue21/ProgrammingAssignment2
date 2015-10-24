## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
       b <- NULL
       set <- function(y) {
             x <<- y
             b <<- NULL
         }
       get <- function() x
       setinverse <- function(inv) b <<- inv
       getinverse <- function() b
       list(
             set = set,
             get = get,
             setinverse = setinverse,
             getinverse = getinverse
         )


## Write a short comment describing this function

cacheSolve <-function(x, ...) {
              b <- x$getinverse()
              if(!is.null(b)) {
                      message("loading cached data")
                      return(b)
                  }
            m <- x$get()
            b <- solve(m, ...)
            x$setinverse(b)
            b
}


        ## Return a matrix that is the inverse of 'x'
}

