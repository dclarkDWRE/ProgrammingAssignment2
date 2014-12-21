cacheSolve <- function(x, ...) {
  ## return inverse of the original matrix input to makeCacheMatrix()
  
  inv = x$getinv()
  
  # if the inverse has already been calculated
  if (!is.null(inv)){
 
    message("get cached data")
    return(inv)
  }
  
  #if cannot find then inverse:
  mat.data = x$get()
  inv = solve(mat.data, ...)

  # set value of the inverse in the cache
  x$setinv(inv)
  
  return(inv)
}