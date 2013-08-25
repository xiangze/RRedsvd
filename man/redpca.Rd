\name{redpca}
\alias{redpca}

\title{
  redsvd
}
\description{
  Return principle components and scores of the scores of each components
  of a sparse matrix by using randomized SVD method.
}
\usage{
redpca(A, num)
}
\arguments{
  \item{A}{
    input matrix (sparse)
}
  \item{num}{
    number of returned principle components.
  }
}
\value{
  Eigenvalues and Eigenvectors of  input sparse matrix A
  \item{principalComponents}{matrix}
  \item{scores}{matrix}
  A * Eigenvectors[,i] simeq Eigenvalues[i] * Eigenvectors[,i]
}

\author{
Xiangze Dubian
}

\examples{
  print("test redpca")
  x <- matrix(
            sample(c(-1, 0, 1, 2), 100, replace = TRUE,
                   prob = c(0.1,0.8, 0.07, 0.03)),
              nrow = 10)
  print(x)
  sx<-as(x,"CsparseMatrix")
  p <- redpca(sx,2)
  a<-p$scores  \%*\% t(p$principalComponents)
}
