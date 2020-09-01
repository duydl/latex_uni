PROGRAM  Exponential_3th_decimal
    IMPLICIT  NONE
 ! Initialize some variables  
    INTEGER         :: n         
    DOUBLE PRECISION:: one_over_n    
    DOUBLE PRECISION:: Term
    DOUBLE PRECISION:: Sum      
    REAL            :: e_third_decimal
    
    e_third_decimal = ANINT(EXP(1.0)*1000)/1000.0
    
 ! First Expression
    n = 0                                ! # of terms used starts with 0
    Term  = 1.0                          ! initialize the term as 1
    Sum   = 1.0                          ! initialize the sum as 1
 
    DO                                   ! for each term, compute
       n = n + 1                         ! indicate of current term
       one_over_n = 1.0 / n
       Term  = Term * one_over_n         ! value of current term
       Sum   = Sum + Term                ! add new term to sum
       IF (Sum > e_third_decimal)  EXIT  ! if pass e with third decimal, exit
    END DO
 
    WRITE(*,*)  'After', n, 'steps:'
    WRITE(*,*)  'e             = ', Sum
    WRITE(*,*)  'Abs(Error)    = ', ABS(Sum - EXP(1.0))
    
    
  ! Second Expression
    n = 0                               ! # of terms used starts with 0
    Term  = 1.0                         ! initialize the term as 1
  
    DO                                  ! for each term, compute
       n = n + 1                        ! n indicate of current term
       one_over_n = 1.0 / n
       Term  = (1 + one_over_n)**n      ! value of current term
       IF (Term > e_third_decimal)  EXIT! if pass e with third decimal, exit
    END DO
    
    WRITE(*,*)  'After', n, 'steps:'
    WRITE(*,*)  'e             = ', Term
    WRITE(*,*)  'Abs(Error)    = ', ABS(Term - EXP(1.0))
 
 END PROGRAM  Exponential_3th_decimal