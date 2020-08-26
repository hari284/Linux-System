<<Documentation
Name        : Hargovind Singh
Date        : 03-07-2020
Description : print the chess board
Input       : 
Output      :
Documentation

#write you code here

#! /bin/bash

echo
for i in `seq 1 8`          # ...for 8 rows...chess board is of 8*8 matrix
do
    for j in `seq 1 8`  # for 8 column
    do
        if [ $((i%2)) -eq 1 ] #for odd position of row
        then
            if [ $((j%2)) -eq 0 ] #odd and even column for odd rows
            then
                echo -e -n "\e[40m" " "  #black color
            else
                echo -e -n "\e[47m" " "  #white color
            fi
        else   #even position of rows
            if [ $((j%2)) -eq 0 ] #odd and even column for even rows
            then
                echo -e -n "\e[47m" " " #white color
            else
                echo -e -n "\e[40m" " " #black color
            fi
        fi
    done
    echo -e "\e[0m" " "  #back to the normal color
done
echo -e  "\e[0m" " "
