## Thi first function stores in memory the result of a matrix the second function
## compares the value stored if any and if its the same matrix it return the value
## saved if not it recomputes the matrix inverse

## This function stores in memory the values of the inverse matrix

makeCacheMatrix <- function(x = matrix()) 
{
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL }
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}



## this function compares and if it the same matrixs it uses the answer 
## saved in the memery if not it recimputes the matrix

cacheSolve <- function(x=matrix(), ...)
{
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)  }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}
