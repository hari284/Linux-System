<<Documentation
Name        : Hargovind Singh
Date        : 25-06-2020
Description : read n and generate pattern(number increasing from top to bottom)
Input       : 5
Output      : reqiured pattern
Documentation

#write you code here

#! /bin/bash

echo -n "enter the number of row or coloumn as row = coluoumn : " 
read n
k=1
if [ $n -gt 2 ]  #checking whether the entered number is greater than 2 or not ....
then
    for i in `seq $n` #loop for rows
    do
        for j in `seq $i`  #loop for coloumns
        do
            echo -n "$k "
            k=$((k+1))
        done
        echo
    done
else
    echo "Error: please enter number greater than 2"
fi


