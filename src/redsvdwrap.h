#include "Rcpp.h"
#include "RcppEigen.h"
using namespace Rcpp;

#include "eigen3/Eigen/Core"
#include "eigen3/Eigen/Dense"
#include "eigen3/Eigen/SVD"
#include "eigen3/Eigen/LU"
#define EIGEN_YES_I_KNOW_SPARSE_MODULE_IS_NOT_STABLE_YET
#include "eigen3/Eigen/Sparse"
#include "redsvd.hpp"

RcppExport SEXP redSVDwrap(SEXP AA,SEXP nn);
RcppExport SEXP redSymwrap(SEXP AA,SEXP nn);
RcppExport SEXP redPCAwrap(SEXP AA,SEXP nn);
