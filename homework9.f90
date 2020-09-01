program calculate_three_values
    write(*,*) 'Please, input a value for a1'
    read(*,*) a1 
    write(*,*) 'Please, input a value for a2'
    read(*,*) a2
    write(*,*) 'Please, input a value for a3'
    read(*,*) a3
    write(*,*) 'Please, input a value for a4'
    read(*,*) a4
    write(*,*) 'Please, input a value for a5'
    read(*,*) a5
    write(*,*) 'Sum: ', (a1+ a2 + a3 + a4 + a5)
    write(*,*) 'Arithmetic Mean: ', (a1+ a2 + a3 + a4 + a5)/5.0
    write(*,*) 'Geometric Mean: ', (a1 * a2 * a3 * a4 * a5)**(1.0/5.0)
end program calculate_three_values