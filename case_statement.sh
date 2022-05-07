#! /usr/bin/bash
cat << INTRO

Trying to see how CASE works in bash scripting...

INTRO

echo Enter a number here :
read number

case $number in
    2)
        echo Your number is equal to 2
    ;;

    3)
        echo Your number is equal to 3
    ;;

    *)
        echo I have no idea what your number is.
    ;;
esac


