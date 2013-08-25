redsvd <- function(A,num){
  if(is(A,"CsparseMatrix")){
    .Call("redSVDwrap",A,num)
  }
}

redpca <- function(A,num){
  if(is(A,"CsparseMatrix")){
    .Call("redPCAwrap",A,num)
  }
}

redSymEigen <- function(A,num){
  if(is(A,"CsparseMatrix")){
    .Call("redSymwrap",A,num)
  }
}
