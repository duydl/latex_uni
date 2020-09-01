#include <stdio.h>
 
void main()
{
    float number = 1 , sum = 0, i = 1; 
    while (number > 0)
    {   number = 1 / i;
        sum = sum + number;
        if (number == 0){
            break;
        }
        i = i + 1;       
    }
    printf("\n The sum till converging is %.2lf", sum);
}