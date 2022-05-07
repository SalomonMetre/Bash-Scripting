#! /usr/bin/bash
cat << INTRO

Welcome ! This program has some stupid comments about your age

INTRO
age=60
if (( $age < 0 ))
then 
    echo 'Your age is not valid'
elif [ $age -eq 0 ]
then
    echo 'Your age is 0'
elif [ $age -gt 0 ] && (( $age < 18 ))
then
    echo 'You are a teenager'
elif [ $age -gt 18 ] && [ $age -lt 40 ]
then
    echo 'You are a young adult'
else
    echo 'You are an old adult'
fi

