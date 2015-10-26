## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##this function caches the inverse of a matrix and stores it
makeCacheMatrix <- function(x = matrix()) {
       b <- NULL
       set <- function(y) {
             x <<- y        ##assigns value to object
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
              b <- x$getinverse()   ##checks to see if inverse exists in cache
              if(!is.null(b)) {      ##if not, it will calculate it
                      message("loading cached data")
                      return(b)
                  }
            m <- x$get()
            b <- solve(m, ...)
            x$setinverse(b)
            b
}

       
        
        ##using solve function gives us inverse matrix 
}

