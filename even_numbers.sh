#! /usr/bin/bash
cat << INTRO

Printing even numbers from zero to 20

INTRO
cat << TECH1 
First technique 
TECH1
for (( i=-1; i<=20; i++ ))
do
    i=$(( $i+1 ))
    echo $i
done

cat << TECH2
Second technique 
TECH2
for i in {0..20..2}
do
    echo $i
done