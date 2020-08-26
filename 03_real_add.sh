<<Documentation
Name        : Hargovind Singh
Date        : 25-05-2020
Description : addition of real numbers
Input       : 10 10
Output      : 20
Documentation

#write you code here

#! /bin/bash

echo -n "please enteR TWO numbers for the addition : "
read num1 num2
echo -n "Answer is "
echo "$num1+$num2" | bc   #piping
