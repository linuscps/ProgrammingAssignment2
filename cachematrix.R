## Put comments here that give an overall description of what your
## functions do

## create a list of function to call cache for cacheSolve

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y){
		x <<- y
		i <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) i <<- inverse
	getinverse <- function() i
	list(set = set, get = get, setinverse = setinverse,
		 getinverse = getinverese)  
}


## Solve inverse of a matrix with checking if inverse already exist in cache
## need to be used with makeCacheMatrix

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'
	i <- x$getinverse()
	if(!is.null(i)){
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	i <- solve(i)
	x$setinverse(i)
	i
}
