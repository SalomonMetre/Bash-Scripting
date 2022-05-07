#! /usr/bin/bash

details=("$@")
number1=${details[0]}
number2=${details[1]}
op=${details[2]}

if [ $op == "s" ]
then
    sum=$(( $number1+$number2 ))
    echo The sum is : $sum
elif [ $op == "d" ]
then
    difference=$(( $number1-$number2 ))
    echo The difference is $difference
elif [ $op == "p" ]
then
    product=$(( $number1*$number2 ))
    echo The product is : $product
elif [ $op == "q" ]
then
    quotient=$(( $number1/$number2 ))
    echo The quotient is $quotient
else
    echo The operation was invalid
fi

cat << INTRO

This is an amazing calculator.
You entered two numbers and an opertion to be performed and you got your result

INTRO