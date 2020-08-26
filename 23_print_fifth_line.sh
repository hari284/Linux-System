<<Documentation
Name        : Hargovind Singh
Date        : 07-07-2020
Description : script to print the fifth line from the content of given file through command line 
Input       : vi 23_print_fifth_line.sh file.txt
Output      : Fifth line of file.txt is line 5
Documentation

#write you code here

#! /bin/bash

if ! [ $# -eq 0 ]  # checking for the argument
then
    if [ -f $1 ] # checking whether it is file or not
    then 
        no_of_lines=`cat $1 | wc -l` # finding the number of lines
        if ! [ $no_of_lines -lt 5 ]   #if no of lines is greater than or equal to 5 then proceed
        then
            echo -n "Fifth line of $1 is "
                cat $1 | head -5 | tail -1
            else
                echo "$1 is having only $no_of_lines so can't print fifth line"
            fi
     else
        echo No such a file
    fi
else
    echo please pass the file name in command line.
fi

