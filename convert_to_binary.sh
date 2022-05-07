#! /usr/bin/bash

echo "Enter your number in decimal : "
read number

echo Your number converted to binary is :
echo "obase=2; ibase=10; $number" | bc


