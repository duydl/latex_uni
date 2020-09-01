program calculate_three_values
    implicit none
    REAL               :: thesum = 0, themultiple = 1, a
    INTEGER            :: i, n
    write(*,*) 'Please, input the number of sample n'
    read(*,*) n 

    if(n < 2 .or. n > 50) then
        write(*,*) 'Sample data must be between 2 and 50'
        stop
    end if

    do i = 1, n
        write(*,*) 'Please, input the sample', i
        read(*,*) a
        thesum = thesum + a 
        themultiple = themultiple * a
    end do

    write(*,*) 'Sum: ', thesum
    write(*,*) 'Arithmetic Mean: ', thesum/dble(n)
    write(*,*) 'Geometric Mean: ', themultiple**(1/dble(n))
end program calculate_three_values