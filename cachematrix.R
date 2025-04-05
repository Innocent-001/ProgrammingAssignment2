## Put comments here that give an overall description of what your
## functions do creates a special matrix that can cache its inverse and computes the inverse

## Write a short comment describing this function
#This function creates a special matrix object that can cache its inverse.
# It stores the matrix and its inverse, and 
#provide methods to set and get these values.

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  #set the matrix 
  set <- function(y){
    x <<- y
    inv <<- NULL
    #set the matrix
    set <- function(y){
      inv <- NULL
    # Function to set the matrix
    set <- function(y) {
      x <<- y  # Assign the new matrix
      inv <<- NULL  # Reset the inverse cache
    }
    
    # get the matrix
    get <- function() x
    
    # set the inverse
    setInverse <- function(inverse) inv <<- inverse
    
    #  get the inverse
    getInverse <- function() inv
    
    # Return a list of the functions
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
  }
  }

}


## Write a short comment describing this function
#This function computes the inverse of the special matrix
# checks if the inverse is already cached and retrieves it if available.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
  inv <- x$getInverse() 
  
  # Check if the inverse is already calculated
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv) 
  }
  
  # If not cached, get the matrix and calculate the inverse
  data <- x$get()  
  inv <- solve(data, ...) 
  x$setInverse(inv) 

 inv} 
  