makeCacheMatrix <- function(x = matrix()) { 
    m <- NULL 
    set <- function(y) { 
        x <<- y 
        m <<- NULL 
    } 
    get <- function() x 
    setMatrixInverse <- function(solve) m <<- solve
    getMatrixInverse <- function() m 
    list(set = set, get = get, 
         setMatrixInverse = setMatrixInverse, 
         getMatrixInverse = getMatrixInverse) 
}

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
