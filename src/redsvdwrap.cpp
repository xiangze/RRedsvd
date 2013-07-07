#include "redsvdwrap.h"

using Eigen::Map;
using Eigen::MatrixXd;
using Eigen::MatrixXf;
using Eigen::MappedSparseMatrix;
using Eigen::SparseMatrix;


SEXP redSVDwrap(SEXP AA,SEXP nn){
  //  int num=(int)(INTEGER(nn)[0]);
  Rcpp::NumericVector dd(nn);
  int num=(int)dd[0];
   const MappedSparseMatrix<double> A(as<MappedSparseMatrix<double> >(AA));
   REDSVD::RedSVD svA(A, num);
   return Rcpp::wrap(svA.matrixV());
}

SEXP redSymwrap(SEXP AA,SEXP nn){
  int num=INTEGER(nn)[0];
  const MappedSparseMatrix<double> A(as<MappedSparseMatrix<double> >(AA));
  REDSVD::RedSymEigen p(A,num);
   return List::create(Named("eigenValues") = p.eigenValues(),
		       Named("eigenVectors")=  p.eigenVectors());
}

SEXP redPCAwrap(SEXP AA,SEXP nn){
  int num=INTEGER(nn)[0];
   const MappedSparseMatrix<double> A(as<MappedSparseMatrix<double> >(AA));
   REDSVD::RedPCA p(A, num);
   return List::create(Named("principalComponents") = p.principalComponents(),
		       Named("scores") =  p.scores());
}
