#! /usr/bin/bash

number=$1
sum=0

for (( i=1; i<$number; i++ ))
do
    result=$(($number%$i))
    if (( $result == 0 ))
    then
        sum=$(($sum+$i))
    fi
done

if (( $sum == $number ))
then
    echo 'Your number is perfect !'
else
    echo 'Your number is not perfect ! '
fi
