<<Documentation
Name        : Hargovind Singh
Date        : 25-06-2020
Description : Script for airthmetic calculator 
Input       : through command line argument(2 '+' 5)
Output      : 7
Documentation

#write you code here

#! /bin/bash

if [ $# -eq 0 ] #checking for the argument ... whether the user passed or not through command line
then
    echo Please pass the argument through command line.
else
    if [ $# -gt 3 -o $# -lt 3 ]  #checking the no of command line argument
    then
        echo Error: please pass three argument 
        echo usage: 05_calculator.sh 5 + 2...for multiplication...5 "*" 2
    else
        case $2 in  #switch...checking the 2nd argument and performing airthmetic accordingly
            "+")
                echo "$1 + $3" | bc
                ;;
            "-")
                echo "$1 - $3" | bc
                ;;
            "*")
                echo "$1 * $3" | bc
                ;;
            "/")
                echo "scale=1; $1 / $3" | bc
                ;;
            *)
                echo please enter valid operator num1 operator num2 :
    esac
    fi
fi
