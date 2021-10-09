# Make a special matrix object containing several functions to cache the 
# inverse of a matrix
makeCacheMatrix = function(x = matrix()) {
        
        #Set a variable for inverse
        a <- NULL
        
        #Set up
        set <- function(matrix){
                x <<- matrix
                a <<- NULL
        }
        #Get the matrix that will be inversed
        get <- function() {
                x
        }
        #Set inverse of a matrix
        setinverse <- function(inverse) {
                a <<- inverse
        }
        #Get the inverse of the matrix
        getinverse <- function() {
                a
        }
        
        #creates list of all above
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

#Retrieve the matrix from makeCacheMatrix
#Return a matrix that is the inverse of 'x'
cacheinverse <- function(x, ...){
        
        #Check inverse output
        if(!is.null(x$getinverse())){
                message("getting cached data")
                return(b)
        }
        
        #Get the matrix
        getmatrix <- x$get()
        
        #Solve the inverse of a matrix
        c <- solve(getmatrix, ...)
        
        #Set inverse matrix to c
        x$setinverse(c)
        
        c
}
        

