<<Documentation
Name        : Hargovind Singh
Date        : 09-07-2020
Description : script to search a user present in your system or not
Input       : user name(through command line)
Output      :
Documentation

#write you code here

#! /bin/bash

flag=0 # assume that user is not present if flag=0 and user is present if flag =1
if [ $# -ne 0 ] #checking command line argument
then
    arr=(`cat /etc/passwd | cut -d ":" -f 1`) #storing username in array
    for i in `seq 0 $((${#arr[@]}-1))` #iterating over user names array
    do
        if [ ${arr[$i]} == $1 ] # matching for given user name
        then
            flag=1
            break
        fi
    done
    if [ $flag -eq 1 ] #checking if user present or not
    then
        echo $1 is present
    else
        echo $1 is not present
    fi
else
    echo Please pass the argument through command line.
fi
