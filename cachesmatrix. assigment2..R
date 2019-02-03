## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
        ##This returns the inverse 

makeCacheMatrix <- function(x = matrix()) {

}


##makeCacheMatrix: This function creates a special “matrix” object that can cache its inverse
makeCacheMatrix <- function(x=matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) i <<- inverse
        getinverse <- function() i
        list(set = set, 
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

##cacheSolve: This function computes the inverse of the special "matrix" 
##returned by makeCacheMatrix above. If the inverse has already been calculated 
##(and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if (!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}


##makevecto creates a special "vector", which is really a list contianing a funciton to: 
##1. set the value of the vector, 2. get the value of the vector, 3. set the value of the mean
##3. ge tthe value of the mean
makeVector <- function(x=numeric()) {
        m <- NULL
        set<- function(y) {
                x<<- y
                m<<-NULL
        }
        get <- function() x
        setmean <- function(mean) m <<-mean
        getmean <- function() m
        list(set = set, get = get,
             setmean = setmean,
             getmean = getmean)
}

cachemean <- function(x, ...) {
        m <- x$getmean()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- mean(data, ...)
        x$setmean(m)
}




