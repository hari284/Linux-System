<<Documentation
Name        : Hargovind Singh
Date        : 03-07-2020
Description : read n and generates fibonacci numbers <= n
Input       : 5
Output      : 0 1 1 2 3 5
Documentation

#write you code here

#! /bin/bash

echo -n "please enter the limit : "
read limit


if [ $limit -gt 0 ] #validating whether limit is positive or not
then
    if [ $limit -eq 0 ] #for limit == 0
    then
        first_term=0
        echo $first_term
    else
        first_term=0
        sec_term=1
        third_term=$((first_term+sec_term))
        echo -n "$first_term $sec_term $third_term "
        
        while [ $third_term -lt $limit -o $third_term -eq $limit ]  #if limit is greater than 0
        do
        
          first_term=$sec_term
          sec_term=$third_term
          third_term=$((sec_term+first_term))
          if [ $third_term -lt $limit ]
          then
              echo -n "$third_term "
          fi
        done
    fi
else
    echo please enter only positive number
fi
