cacheSolve <- function(x, ...) { 
    m <- x$getMatrixInverse() 
    if(!is.null(m)) { 
        message("getting cached matrix") 
        return(m) 
    } 
    message("inverse matrix is not in memory, it will be computed now...")
    data <- x$get() 
    m <- solve(data, ...) 
    x$setMatrixInverse(m) 
    m 
}
