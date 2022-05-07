#! /usr/bin/bash

cat << INTRO

Welcome ! This is an amazing calculator you can use...
Enter two numbers and an operator and get your result
For the operation, enter s,d,p and q to get the sum, difference, product and quotient respectively

INTRO

echo 'Enter your two numbers : '
read number1
read number2
echo 'Enter operation : '
read op
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