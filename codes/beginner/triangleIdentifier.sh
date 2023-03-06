#!/bin/bash

:'
Given three integers (, , and ) representing the three sides of a triangle, identify whether the triangle is scalene, isosceles, or equilateral.

If all three sides are equal, output EQUILATERAL.
Otherwise, if any two sides are equal, output ISOSCELES.
Otherwise, output SCALENE.
Input Format

Three integers, each on a new line.

Constraints


The sum of any two sides will be greater than the third.

Output Format

One word: either "SCALENE" or "EQUILATERAL" or "ISOSCELES" (quotation marks excluded).
'

read -p "Enter value for X: " x
read -p "Enter value for Y: " y
read -p "Enter value for Z: " z 

# Compare the value of x and y
if [[ $x = $y ]]
then
    # Confirm the value of x and z
    if [[ $x = $z ]]
    then 
        echo " "
        echo "Equilateral triangle"
    elif [[ $x != $z ]]
    then
        echo " "
        echo "Isosceles triangle"
    fi
    
elif [[ $y = $z ]]
then 
    # Determine the type of triangle
    if [[ $y != $x ]]
    then 
        echo " "
        echo "Isosceles triangle"
    fi
    
elif [[ $x = $z ]]
then 
    if [[ $x != $y ]]
    then
        echo " "
        echo "Isosceles triangle"
    fi
# Final case scenerio
else
    echo " "
    echo "Scalene triangle"
fi
