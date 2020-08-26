<<Documentation
Name        : Hargovind Singh
Date        : 02-07-2020
Description : print a given number in reverse order
Input       : 12345
Output      : 54321
Documentation

#write you code here

#! /bin/bash
echo -n "enter a multi-digit number"
read num

echo $num | grep -q [a-zA-Z]   #checking whether the entered input is having numeric only or alphanumeric through piping 

if [ $? -ne 0 ] #checking the same(above comment)
then
    if [ $((num/10)) -eq 0 ]  #checking whether single digit or multidigit number
    then
        echo "enter multi-digit number"
    else
        if [ $num -lt 0 ]  #checking for negative numbers
        then
            num=${num:1}  #give all characters except first one...0th index
            flag=1
        fi
        len=${#num}  #calculating length of num
        
        if [ ${num:-1} -eq 0 ]  #checking whether the last digit is 0 or not
        then
            num=${num:0:$((len-2))}
        fi
        new_num=0  #new_number
        for i in `seq 1 $((len))`  #looping for  1 2 3 4....till lenght of number
        do
            rem=$((num%10))
            new_num=$((new_num*10+rem))
            num=$((num/10))
        done
        
        if [[ $flag -eq 1 ]]  #if num is minus then making new_num a minus
        then
            new_num=$((0-new_num))
        fi
        echo "$new_num"
   
    fi
else
    echo enter valid input   #error massage
fi

