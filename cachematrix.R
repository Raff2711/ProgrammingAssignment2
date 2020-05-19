## Put comments here that give an overall description of what your
## functions do

## this code create a special object that stores the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y)
    x <<- 
    inverse <<- NULL
    get <- function() x
    setinverse <- function(solvematrix) inverse <- solvematrix
    getinverse <- function() inverse
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## this function return the inverse of the matrix stored above, 

cacheSolve <- function(x, ...) {
        inverse <- x$getinverse()
        if(!is.null(inverse)){
            message("getting cached data")
            return(inverse)
        }
        data <- x$get
        inverse <- solve(data)
        x$setinverse(inverse)
        inverse
}

