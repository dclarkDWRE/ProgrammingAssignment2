makeCacheMatrix <- function(x = matrix()) {
  #x will be the matrix that we will need inverse for
  #Return a list which will set the matrix, get the matrix, set and get the inverse
  #list will used to for input for second function cachesolve
  inv = NULL
  set = function(y) {
    x <<- y
    # For assigning a value to an object from a different environment 
    inv <<- NULL
  }
  get = function() x
  setinv = function(inverse) inv <<- inverse 
  getinv = function() inv
  list(set=set, get=get, setinv=setinv, getinv=getinv)
}

