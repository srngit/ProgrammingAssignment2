## Given a matrix, the function makes a list of funtions - set, get, setsolve and getsolve

makeCacheMatrix <- function(x = matrix()) 
    
    { 
        s <- NULL
        set <- function(y) 
        
            {
                x <<- y
                s <<- NULL
            }
    get <- function() x
    setsolve <- function(solve) s <<- solve
    getsolve <- function() s
    list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)

    }


## This function fetches the inverse of the given matrix if already exist in cache

cacheSolve <- function(x, ...) 
    
    {
        s <- x$getsolve()
        if(!is.null(s)) 
        {
        message("getting cached data")
        return(s)
        }
    
    data <- x$get()
    s <- solve(data, ...)
    x$setsolve(s)
    s
    
    }
