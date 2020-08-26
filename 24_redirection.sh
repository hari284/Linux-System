<<Documentation
Name        : Hargovind Singh
Date        : 08-07-2020
Description : use pipes or redirection to create an infinite feedback loop
Input       : 
Output      :
Documentation

#write you code here

#! /bin/bash

echo before loop  file contents
cat file.txt  #display data before the loop started
echo after loop  file contents
cat `tail -f file.txt >> file.txt`|tail -f file.txt #diaplaying data after loop....... 
