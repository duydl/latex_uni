PROGRAM  Exponential_first_expression
    IMPLICIT  NONE
 ! Initialize some variables  
    INTEGER         :: n         
    DOUBLE PRECISION:: one_over_n    
    DOUBLE PRECISION:: term
    DOUBLE PRECISION:: sum_terms      
 
 ! First Expression
    n = 0                                ! # of terms used starts with 0
    term  = 1.0                          ! initialize the term as 1
    sum_terms   = 1.0                    ! initialize the sum as 1
 
    DO                                   ! for each term, compute
       n = n + 1                         ! indicate of current term
       one_over_n = 1.0 / n
       term  = term * one_over_n         ! value of current term
       sum_terms   = sum_terms + term    ! add new term to sum
       WRITE(*,*)  n, sum_terms
       IF (n == 100)  EXIT               ! if n reaches 100, exit
    END DO
 
 END PROGRAM  Exponential_first_expression