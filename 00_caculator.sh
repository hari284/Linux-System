<<Documentation
Name        : Hargovind Singh
Date        : 25-06-2020
Description : script for airthmatic calculator
Input       : 2 5 +
Output      : 7
Documentation

#write you code here

#! /bin/bash

echo -n "enter two numbers : "
read num1 num2  #reading operands

echo "enter 1 for addition, 2 for substraction, 3 for division, 4 for multiplication : "
read op #reading operator

case $op in
    1)
        echo $num1+$num2 | bc
        ;;
    2)
        echo $num1-$num2 | bc
        ;;
    3)
        echo "scale=2; $num1/$num2" | bc
        ;;
    4)
        echo $num1*$num2 | bc
        ;;
    *)
        echo please enter valid input
esac

