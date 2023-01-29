## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function



makeCacheMatrix <- function(x = matrix()) {
    	  m <- NULL
      	  set <- function(y) {
                x <<- y
                m <<- NULL
      	  }
       	 get <- function() x
       	 setinvmat <- function(invmat) m <<- invmat
       	 getinvmat <- function() m
       	 list(set = set, get = get,
             setinvmat = setinvmat,
             getinvmat = getinvmat)
}


## Write a short comment describing this function

#

cacheSolve <- function(x, ...) {
  	m <- x$getinvmat()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinvmat(m)
        m
}


##Testing
##Create Matrix
#a1 <- c(3, 2, 5)
#a2 <- c(2, 3, 2)
#a3 <- c(5, 2, 4)
#matA<-rbind(a1, a2, a3)

## supply the matrix to the makecacheMatrix

#amat<-makeCacheMatrix(matA)

##get the stored matrix

#amat$get()

##get the cached inv matrix
#amat$getinvmat()

##gets null when nothing is stored

##calculate inverse and cache

#cacheSolve(amat)

##To get the cached inverse of matrix 

#amat$getinvmat()
