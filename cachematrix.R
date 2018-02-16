## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
##Input: a matrix
##A list contining functions to get, set the matrix, and get, set the inversed matrix
##The function caches the inverse of the matrix
  inversed_matrix <- NULL
  set <- function(y) {
    x <<- y
    inversed_matrix <<- NULL
  }
  get <- function() x
  setinverse <- function(a_matrix) inversed_matrix <<- a_matrix
  getinverse <- function() inversed_matrix
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
##The input is
  inversed_matrix <- x$getinverse()
  if(!is.null(inversed_matrix)) {
    message("getting cached data")
    return(inversed_matrix)
  }
  data <- x$get()
  inversed_matrix <- solve(data, ...)
  x$setinverse(inversed_matrix)
  inversed_matrix
  
}

##Test
##The following lines of codes test the above functions
##Just uncomment and run on your computer
#m <- matrix(c(1, 2, 3, 1, 1, 1, 1, 1, 5, 11), nrow=3, ncol=3)
#new_m <- makeCacheMatrix(m)
#cacheSolve(new_m)
#cacheSolve(new_m)
