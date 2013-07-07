redsvd <- function(A,n){
  if(is(A,"CsparseMatrix")){
    .Call("redSVDwrap",A,n)
  }
}

redpca <- function(A,n){
  if(is(A,"CsparseMatrix")){
    .Call("redPCAwrap",A,n)
  }
}

redSymEigen <- function(A){
  if(is(A,"CsparseMatrix")){
    .Call("redSymwrap",A)
  }
}
