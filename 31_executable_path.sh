<<Documentation
Name        : Hargovind Singh
Date        : 09-07-2020
Description : for each directory in $PATH, display the number of executable files in that directory.
Input       :
Output      :
Documentation

#write you code here

#! /bin/bash

str=(`echo $PATH`) # storing all directories of $PATH in string
base_index=0 #base index to cut the $PATH string
total_count=0 #final count variable

for i in `seq 0 $((${#str}-1))` #passing through each character in string that is the result of $PATH command
do
    if [[ ${str:i:1} == ':' ]] #matching with : to extract exact directory
    then 
        dir=${str:base_index:$((i-base_index))} #getting directory one by one
        echo Current dir: $dir #displaying
        base_index=$((i+1)) #updating base_index
        cd $dir
        arr=(`find ./ -executable -type f`) #storing all executable files in array
        total_count=$((total_count+${#arr[@]})) #total count
        echo current count: ${#arr[@]}
    fi
done
echo Total - $total_count

