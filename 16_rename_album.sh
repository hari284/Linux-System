<<Documentation
Name        : Hargovind Singh
Date        : 10-07-2020
Description : rename all the album files with same name in a directory
Input       : input through command line
Output      :
Documentation

#write you code here

#! /bin/bash

if [ $# -eq 1 ] #checking for command line argument
then
    for i in * #iterating over all files in album directory
    do
        mv $i $1_"$(echo $i | cut -c 4-)" #substituting prefix with $1
    done    
else
    echo Please pass the prefix name through command line.
fi
