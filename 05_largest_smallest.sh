<<Documentation
Name        : Hargovind Singh
Date        : 29-06-2020
Description : find the smallest and largest number from the given numbers
Input       : input using command line argument
Output      :
Documentation

#write you code here
#! /bin/bash
if [ $# -gt 0 ]
then
    #initializing the minimum and maximum value with first argument passed
    min=$1
    max=$1

    for i in $* #passing all arguments to loop for checking smallest and largest number
    do

        if [ $i -lt $min ]  #condition for minimum
        then
            min=$i
        fi


        if [ $i -gt $max ] #condition for maximum
        then
            max=$i
        fi
    done

    echo "largest value is $max and smallest value is $min"
else
    echo "Error: No argument is passed"
fi
