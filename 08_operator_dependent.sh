<<Documentation
Name        : Hargovind Singh
Date        : 03-07-2020
Description : to perform airthmetic operation on digits of a given number depending upon the operator.
Input       : 1234+(through command line)
Output      : 10
Documentation

#write you code here

#! /bin/bash

if [ $# -eq 1 ] #checking for the argument in command line
then
    num=$1
    echo $num | grep -q [a-zA-Z] #checking whether num contains alphabetic characters
    if ! [ $? -eq 0 ]
    then
        if ! [[ `echo "${num:0:$((${#num}-2))}" | sed -e 's/[0-9]//g'` ]] #checking whether it is only having digits and operator in 1234+ this formate
        then
            if [ ${num:0:1} -eq 0 ] #checking if first character of num is 0 or not
            then
                num=${num:1:$((${#num}-1))} #updating num if first character is 0
            fi
            op=${num:$((${#num}-1)):1} #operator
            num=${num:0:$((${#num}-1))} #removing operator from num

            case $op in    #case for different different operations like sum,sub,mul,div
                +)
                    sum=${num:0:1} #assigning first digit to sum
                    for i in `seq 1 $((${#num}-1))` #iterating over whole number
                    do
                        sum=$((sum+${num:i:1}))
                    done
                    echo Sum is $sum
                    ;;
                -)
                    sub=${num:0:1} #assigning first digit to sub
                    for i in `seq 1 $((${#num}-1))` #iterating over num
                    do
                        sub=$((sub-${num:i:1}))
                    done
                    echo Sub is $sub
                    ;;
                \*)
                    mul=${num:0:1} #assigning first digit to mul
                    for i in `seq 1 $((${#num}-1))` #iterating over num
                    do
                        mul=$((mul*${num:i:1}))
                    done
                    echo Mul is $mul
                    ;;
                /)
                    div=${num:0:1} #assigning first digit to div
                    for i in `seq 1 $((${#num}-1))` #iterating over num
                    do
                        div=$((div/${num:i:1}))
                    done
                    echo Div is $div
                    ;;
                *)  #default case
                    echo operator missing.
                    ;;

                esac
            else
                echo enter valid input.
        fi  

    else
        echo please enter a valid input like 1234+
    fi
else
    echo "error : Please pass the argument"
    echo "usage : 08_operator_dependent.sh 123+"
fi


