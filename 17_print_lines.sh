<<Documentation
Name        : Hargovind Singh
Date        : 05-07-2020
Description : to print contents of file from given line number to next given number of lines
Input       : 2 3 file.txt
Output      : line 2
            : line 3
            : line 4
Documentation

#write you code here

#! /bin/bash

if [ $# -eq 3 ] #checking whether argument count is 3 or not
then
    cat  $3 | head -$((`cat $3 | wc -l`-$2)) | head -$(($1+$2-1)) | tail -$2
else
    echo Error: Argument missing
    echo Usage: ./17_print_lines.sh startline uptoline filename
    echo eg: ./17_print_lines.sh 2 3 file_name
fi



