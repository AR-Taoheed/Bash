#!/bin/bash/
:'
This is a simple recursive function that accepts an input from 
the user and outputs the factorial of the number
'

factorial=1
i=2

#Declaration of the function
 Factorial () {
    read -p "Enter factorial value: " fact
    # While loop to check until the i is equal to the number required
    while [ $i -le $fact ];
    do
        factorial=$(( $factorial*$i ))
        i=$(( $i+1 ))
    done
    echo $factorial
    
    # Checks if the number entered is less than 2 and echoes 1 as the output
    if [ $fact -lt 2 ];
    then
        echo $factorial

    fi

  }

  Factorial 14