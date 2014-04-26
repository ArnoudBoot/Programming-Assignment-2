## Programming assignment 2 for the coursera cource on R-programming

## This function will cache the inverse of the entered matrix. 
##When the number of columns and rows in the matrix is not equal, 
##it will return an error saying the matrix is not a square 
##(which is a prerequisite for the solve() function).

makeCacheMatrix <- function(x) {
  CacheMatrix<-NULL
  if(nrow(x)==ncol(x)){
    CacheMatrix<<-solve(x)
  }  
  if(nrow(x)!=ncol(x)){
    print("Matrix is not a square")
  }
}



## The cacheSolve generates the inverse of the entered matrix. 
## If this has already been performed by the makeCacheMatrix function, 
## the previously calculated inverse matrix is returned. 

cacheSolve <- function(x) {
  if (exists("CacheMatrix")){
    if(solve(x) == CacheMatrix){
      print("returning cached matrix")
      print(CacheMatrix)
    }
  }
  if (exists("CacheMatrix")){
    if(solve(x) != CacheMatrix){
      print("Reverse new input matrix not the same as cached inverse matrix")
      print("Calculating new inverse matrix")
      NewMatrix<-NULL
      if(nrow(x)==ncol(x)){
        NewMatrix<<-solve(x)
        print(head(NewMatrix))
      }  
      if(nrow(x)!=ncol(x)){
        print("New input matrix is not a square")
      }
     }
   }
   if(!exists("CacheMatrix")){
       print("Calculating new inverse matrix")
       NewMatrix<-NULL
       if(nrow(x)==ncol(x)){
       NewMatrix<<-solve(x)
       print(head(NewMatrix))
       }
       if(nrow(x)!=ncol(x)){
         print("New input matrix is not a square")
       }
    }
}
