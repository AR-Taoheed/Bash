#!/bin/bash
sum=0
count=0

read -p "Enter the divisor: " div 

if [ $div -le 0 ];
then 
    echo "Error: divisor must be greater than zero"
    exit 1
fi

while [ $count -lt $div ];
do 
    read -p "Enter a number: " num
    sum=$(( $sum + $num ))
    count=$(( $count + 1 ))
done


echo $(printf "%.3f\n" $sum / $div)

