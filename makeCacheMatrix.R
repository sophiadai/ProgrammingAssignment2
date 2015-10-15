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

