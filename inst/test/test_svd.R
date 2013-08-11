library('Matrix')

gentestmat <- function(N=100,n=25,sym=F){
  x <- matrix(
            sample(c(-1, 0, 1, 2), N, replace = TRUE,
                   prob = c(0.1,0.8, 0.07, 0.03)),
              nrow = n)
  if(sym){
    for(i in (1:ncol(x))){
      for(j in (i:nrow(x))){
        x[i,j] <- x[j,i]
      }
    }
  }
  x
}

gensptestmat <- function(N=100,n=25,sym=F){
    x <- gentestmat(N,n,sym)
    sx<-as(x,"CsparseMatrix")
}

test_svd <- function(n=2){
  print("redsvd")
  sx<-gensptestmat(100,25)
  print (sx)
  p <- redsvd(sx,n)
  (p$U %*%  diag(p$D) %*% t(p$V))
}

test_pca <- function(n=2){
  print("redsvd")
  x<-gentestmat(100,10)
  sx<-as(x,"CsparseMatrix")
  print (sx)
  p <- redpca(sx,n)
  print (p)
  a <- x-p$scores %*% t(p$principalComponents)
  print (i)
  print (a)
}


test_sym <- function(n=2){
  print("redsym")
  x<-gentestmat(100,10,T)
  sx<-as(x,"CsparseMatrix")
  print (sx)
  p <- redSymEigen(sx,n)
  for( i in (length(p$eigenValues))){
    a <-  x %*% p$eigenVectors[,i] - p$eigenValues[i] * p$eigenVectors[,i] 
    print (i)
    print (a)
  }

}
