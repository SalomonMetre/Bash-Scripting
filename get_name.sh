#! /usr/bin/bash

cat<<INTRO
This program takes a name and sends it to another script which processes it
INTRO

echo Enter your name : 
read NAME
export NAME
./print_name.sh