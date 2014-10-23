## These two functions are used to calcuate the inverse of the Square matrix and cache the inverse.
## This will allow inverse matrix result to be used multiple times.

## This function will take SQUARE matrix as input. 
## It will return a list of following four functions - 
##  set() - It will set the input matrix in the cache. 
##  get() - Get the matrix from the current enviornment variable 
##  setinverse() - Set the inverse of the matrix in the cache.
##  getinverse() - Get the inverse matrix from the cacche. 

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function (y){
		x <<- y
		i <<- NULL
	}
	get <- function () x
 	setinverse <-function (inverse) i <<- inverse
	getinverse <- function() i
	list(set = set, get = get, 
	     setinverse = setinverse, 
	     getinverse = getinverse) 

}


## This function will take the Vector Matrix created by makeVectorMatrix() function.
## It checks if inverse already is calcualted.
## if inverse matrix is not calculated, it will calcuate the Inverse of perfect Square matrix and set the cache
## if inverse matrix is already calcualted, it will return the inverse from the cache. 

cacheSolve <- function(x, ...) {
	i <- x$getinverse()
	if (!is.null(i)){
		message("getting cached data")
		return(i)
	}
	
	data <- x$get()
	i <- solve(data, ...)
	x$setinverse(i)
	i

        ## Return a matrix that is the inverse of 'x'
}
