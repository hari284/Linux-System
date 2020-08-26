<<Documentation
Name        : Hargovind Singh
Date        : 09-07-2020
Description : count the number of users with user ids between 500 and 10000 on the system 
Input       :
Output      :
Documentation

#write you code here

#! /bin/bash

count=0
arr=(`cat /etc/passwd | cut -d ":" -f 3`)  #storing all user ids in array
if [ $# -eq 0 ] #checking whether command line argument is o or not
then
    for i in `seq 0 $((${#arr[@]}-1))` # iterating over ids
    do
        if [ ${arr[$i]} -gt 500 -a ${arr[$i]} -lt 10000 ] #checking user ids between 500 and 10000 ..default case
        then
            count=$((count+1)) #incrementing count by 1
        fi
    done
    echo Total count of user id between 500 and 10000 is : $count
else
    for i in `seq 0 $((${#arr[@]}-1))` #iterating over ids
    do
        if [ ${arr[$i]} -gt $1 -a ${arr[$i]} -lt $2 ] #checking for ids between user input range
        then 
            count=$((count+1)) #increment
        fi
    done
    echo Total count of user id between $1 and $2 is : $count
fi

