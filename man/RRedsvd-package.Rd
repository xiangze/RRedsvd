\name{RRedsvd-package}
\alias{RRedsvd-package}
\alias{RRedsvd}
\docType{package}
\title{
RRedSVD
}
\description{
SVD(singular value decomposition) by using RedSVD
}
\details{
\tabular{ll}{
Package: \tab RRedsvd\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-07-08\cr
License: \tab MPL2\cr
}
"Finding structure with randomness: Stochastic algorithms for constructing approximate matrix decompositions"
}

\author{
Xiangze Dubian
Maintainer:<xiangze@gmail.com>
}
\references{
RedSVD
https://code.google.com/p/redsvd/wiki/English

Finding structure with randomness: Probabilistic algorithms for constructing approximate matrix decompositions.
http://amath.colorado.edu/faculty/martinss/Pubs/2009_HMT_random_review.pdf

Randomized Algorithms for Very Large-Scale Linear Algebra
https://www.cse.cuhk.edu.hk/irwin.king/_media/presentations/randomized_algorithm_for_very-large_scale_linear_algebra.pdf
}
%~~ Optionally other standard keywords, one per line, from file KEYWORDS in ~~
%~~ the R documentation directory ~~
\keyword{ package }
\seealso{
%~~ Optional links to other man pages, e.g. ~~
%~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
Rcpp
Rcppeigen
}
\examples{
%library('Matrix')
  x <- matrix(
            sample(c(-1, 0, 1, 2), 100, replace = TRUE,
                   prob = c(0.1,0.8, 0.07, 0.03)),
              nrow = 25)
  print(x)
  print("test redsvd")
  sx<-as(x,"CsparseMatrix")
  p <- redsvd(sx,2)
  (p$U \%*\%  diag(p$D) \%*\% t(p$V))
}
