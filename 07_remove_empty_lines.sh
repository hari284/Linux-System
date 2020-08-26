<<Documentation
Name        : Hargovind Singh
Date        : 03-07-2020
Description : delete the empty lines in a given file through command line argument
Input       : file.txt
Output      : empty lines are deleted
Documentation

#write you code here

#! /bin/bash
if [[ ${#@} -eq 0 ]]  #checking for command line argument
then
    echo enter the file name through command line
else
    sed -i '/^$/d' $1  # deleting permanently the empty lines...^ represents begining and $ represents end of file 
    cat $1   #displaying the content of file after deleting the empty lines:
fi
