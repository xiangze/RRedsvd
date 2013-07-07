
                                        #test_that("",{})
sparseMatrix
library('Matrix')

test_ta <- function(){
  print("test")
  x <- matrix(
            sample(c(-1, 0, 1, 2), 100, replace = TRUE,
                   prob = c(0.1,0.8, 0.07, 0.03)),
            nrow = 10)              
#            nrow = 25)
  sx<-as(x,"CsparseMatrix")
  (p <- redsvd(sx,2))
}
