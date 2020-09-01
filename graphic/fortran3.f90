PROGRAM  Exponential_second_expression
    IMPLICIT  NONE
 ! Initialize some variables  
    INTEGER         :: n         
    DOUBLE PRECISION:: one_over_n    
    DOUBLE PRECISION:: term
 
  ! Second Expression
    n = 0                               ! # of terms used starts with 0
    term  = 1.0                         ! initialize the term as 1
  
    DO                                  ! for each term, compute
       n = n + 1                        ! n indicate of current term
       one_over_n = 1.0 / n
       term  = (1 + one_over_n)**n      ! value of current term
       WRITE(*,*)  n, term
       IF (n == 100)  EXIT              ! if n reaches 100, exit
    END DO
 
 END PROGRAM  Exponential_second_expression