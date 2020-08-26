<<Documentation
Name        : Hargovind Singh
Date        : 03-07-2020
Description : print the length of each and every string using arrays, given through command line 
Input       : Hi Hello How Are You
Output      : 2 5 3 3 3
Documentation

#write you code here

#! /bin/bash


if [ ${#@} -eq 0 ] #checking whether user passed argumet or not
then
    echo enter the input through command line
else
    arr=("$@")  #storing all elements in an array
    len=${#@} #finding length
    for i in `seq 1 $len` #iterating over the whole length
    do
        str=${arr[i-1]} # storing single single argument in str
        echo "Length of string(${str}) - ${#str}"
    done
fi
