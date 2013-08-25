\name{redsvd}
\alias{redsvd}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  redsvd
}
\description{
  Return approximate singular values and left and right orthogonal
  matrices of a sparse matrix by using randomized SVD method.
}
\usage{
redsvd(A, num)
}
\arguments{
  \item{A}{
    input matrix (sparse)
}
  \item{num}{
    the number of returned singular values.
}
}
\value{
  A list of U,D and V against input sparse matrix A
  \item{U}{matrix U}
  \item{V }{matrix V}
  \item{D }{singular values D as vector.}
  A simeq  U * D  * V^t
}
\author{
Xiangze Dubian
}
\examples{
  print("test redsvd")
  x <- matrix(
            sample(c(-1, 0, 1, 2), 100, replace = TRUE,
                   prob = c(0.1,0.8, 0.07, 0.03)),
              nrow = 25)
  print(x)
  sx<-as(x,"CsparseMatrix")
  p <- redsvd(sx,2)
  (p$U \%*\%  diag(p$D) \%*\% t(p$V))
}
\keyword{ SVD,Randomized SVD }
\keyword{ Eigen }% __ONLY ONE__ keyword per line
