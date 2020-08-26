<<Documentation
Name        : Hargovind Singh
Date        : 29-06-2020
Description : generate pattern of n rows and n coloumn(number increament from left to right)
Input       : limit(number of row or coloumn) 
Output      : required pattern
Documentation

#write you code here

#! /bin/bash

echo -n "enter the limit : "
read num

if [ $num -lt 3 ]  #validating whether limit is not less then 3
then
    echo "please enter limit more than or equal to 3 " #error massege
else
    for i in `seq 1 $num` #loop for rows
    do
        l=1
        for j in `seq 1 $i` #loop for coloumn
        do
            echo -n "$l " #printing 
            l=$((l+1))
        done
        echo
    done
fi

