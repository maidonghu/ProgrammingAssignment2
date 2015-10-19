## Caching the Inverse of a Matrix:
## Matrix inversion is usually a costly computation and there may be some 
## benefit to caching the inverse of a matrix rather than compute it repeatedly.
## Below are a pair of functions that are used to create a special object that 
## stores a matrix and caches its inverse.

## This function creates a special "matrix", which is really a list containing a function to
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse of the matrix
## 4. get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
		
		inv <- NULL
		set <- function(y) {
		
				x <<- y
		
				inv <<- NULL
		}
		
		get <- function() x
		setinv <- function(inverse) inv <<- inverse
		getinv <- function() inv
		
		list(set = set,
             get = get,
             setInverse = setinv,
             getInverse = getinv)
				

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
