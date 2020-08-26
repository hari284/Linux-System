<<Documentation
Name        : Hargovind Singh
Date        : 07-07-2020
Description : use a recursive function to print each argument passed to function.
Input       : 5 3 2
Output      : 5
            : 3
            : 2
Documentation

#write you code here

#! /bin/bash

function rec
{
    echo $1
    #...storing passed argument in an array...
    arr=($@)
    
    #....checking whether total element in array is 1 or not...
    if [ $# -eq 1 ]
    then
        return
    else
        rec ${arr[@]:1}  #recursion action...
    fi

}
if ! [ $# -eq 0 ]   #checking whether user have passed argument or not
then
    rec $@ #.......calling the rec() functon
else
    echo Pass the argument through command line.
fi

