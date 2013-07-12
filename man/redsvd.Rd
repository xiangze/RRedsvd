\name{redsvd}
\alias{redsvd}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
  redsvd
  %%  ~~function to do ... ~~
}
\description{
  %%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
redsvd(A, n)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{A}{
    input matrix (sparse)
}
  \item{n}{
  dimention of output matrix
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~

}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
RedSVD
https://code.google.com/p/redsvd/wiki/English

Finding structure with randomness: Probabilistic algorithms for constructing approximate matrix decompositions.
http://amath.colorado.edu/faculty/martinss/Pubs/2009_HMT_random_review.pdf

Randomized Algorithms for Very Large-Scale Linear Algebra
https://www.cse.cuhk.edu.hk/irwin.king/_media/presentations/randomized_algorithm_for_very-large_scale_linear_algebra.pdf
%% ~put references to the literature/web site here ~
}
\author{
Xiangze Dubian
  %%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (A, n) 
{
    if (is.matrix(A)) {
        .Call(redsvdwrap, A, n)
    }
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ SVD }
\keyword{ Eigen }% __ONLY ONE__ keyword per line
