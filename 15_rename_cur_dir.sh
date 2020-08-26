<<Documentation
Name        : Hargovind Singh
Date        : 10-07-2020
Description : script to rename current working directory with given name.
Input       : Assign2
Output      : current directory will be renamed to Assign2
Documentation

#write you code here

#! /bin/bash 

if [[ $# -eq 0 ]]
then 
    echo  " please pass the new directory name."
else
    oldname=`basename $PWD` #storing basename or current directory name in oldname variable
    mv -T ../$oldname ../$1  #renaming with given name
    echo current directory will be renamed to $1
fi


