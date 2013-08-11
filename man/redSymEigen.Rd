\name{redSymEigen}
\alias{redSymEigen}

\title{
  redSymEigen
}
\description{
  Return approximate eigenvalues and eigenvectors of 
  a sparse symmetrical matrix by using randomized SVD method.
}
\usage{
redSymEigen(A,num)
}
\arguments{
  \item{A}{
    input matrix (sparse,symmetric)
}
  \item{num}{
  number of returned eigenvalues. 
}
}
\value{
  Eigenvalues and Eigenvectors of  input sparse matrix A
  \item{Eigenvectors}{matrix}
  \item{Eigenvalues }{as vector}
  A * Eigenvectors[,i] \simeq Eigenvalues[i] * Eigenvectors[,i]
}

\author{
Xiangze Dubian
}

\examples{
  print("test redSymEigen")
  x <- matrix(
            sample(c(-1, 0, 1, 2), 100, replace = TRUE,
                   prob = c(0.1,0.8, 0.07, 0.03)),
              nrow = 10)
  for(i in (1:ncol(x))){
    for(j in (i:nrow(x))){
      x[i,j] <- x[j,i]
    }
  }
  print(x)
  sx<-as(x,"CsparseMatrix")
  p <- redSymEigen(sx,3)
  for( i in (ncol(p$eigenVectors))){
    a <-  x \%*\% p$eigenVectors[,i] - p$eigenValues[i] * p$eigenVectors[,i] 
  }

}
