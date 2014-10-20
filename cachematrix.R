##2 functions that cache the inverse of a matrix

## This function creates a special "matrix" object that can cache its inverse.
makeCacheMatrix <- function(x = matrix()) {   
        
        ##setter & getter to make the state of matrix accessible
        
        
        setMatrix <- function( matrix){    ##set the matrix
                x <- matrix
                k <- NULL
        }

        getMatrix <- function(){           ##get the matrix
                x }


        k <- NULL ##Initialize inverse matrix

       ##setter & getter to make the state of the matrix inverse accessible
        setMatrixInv <- function(inv){        ##set the matrix inverse
                 k <- inv
        }
        
        
        getMatrixInv <- function(){             ##get the matrix inverse
                k             
        }

}

## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
##If the inverse has already been calculated (and the matrix has not changed), 
##then the cachesolve function should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getMatrixInv()
        
        ##if already set, return cached inverse
        if(is.null(inv) == FALSE){
                return(inv)       ##cachesolve should retrieve the inverse from the cache, program return inverse matrix and end here
        }
        ## if not cached, get and calculate using solve
        else{
        
        mat <- x$get()          ##get earlier said matrix
        
        
        inv <- solve(mat)    ##solve returns inverse - see help(solve) for details
        
        x$setMatrixInv(inv)
        
        inv                     ##return the matrix 
        }
        }
