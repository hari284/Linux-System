<<Documentation
Name        : Hargovind Singh
Date        : 09-07-2020
Description : script to replace 20% lines in a c file randomly and replace it with the pattern <----Deleted---->
Input       : file.c through command line
Output      :
Documentation

#write you code here

#! /bin/bash

if [ $# -eq 1 ] #checking whether argument count is 1 or not
then
    if [ -f $1 ] # checking whether given argument is file or not
    then
        if [ `echo $1 | cut -d "." -f 2` == 'c' ] # checking whether it is a .c file or not
        then
            if [ `wc -w $1 | cut -d " " -f 1` -gt 0 ] #checking whether given file is empty or not
            then
                total_lines=`wc -l $1 | cut -d " " -f 1` #total number of lines in file
                twenty_percent=$((total_lines*20/100)) # 20% of total lines

                for i in `seq 1 $twenty_percent`
                do
                    line_to_repl=(`shuf -i 1-$total_lines -n 1`) #generating line number randomly which we will replace
                    sed -i "${line_to_repl}c<----Deleted---->" $1 #relacing the line with <----Deleted----> 
                done
            else
                echo "$1 is empty file. so can't replace the string."
            fi
        else
            echo "It's not a .c file."
        fi
    else
        echo "No such a file."
    fi
else
    echo Please pass the file name through command line.
fi

