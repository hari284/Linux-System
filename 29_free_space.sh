<<Documentation
Name        : Hargovind Singh
Date        : 09-07-2020
Description : Display the name of any file-system which have less than 10% free space
Input       :
Output      :
Documentation

#write you code here

#! /bin/bash

file_system=(`df | tr -s [:print:] | cut -d " " -f 1`) #array of filesystem...also include field name....at 0th index...Filesystem
used_space=(`df | tr -s [:print:] | cut -d " " -f 5`) #array of used_space...also include used space....at 0th index...use%

for i in `seq 1 $((${#used_space[@]}-1))` #iteratin over used_space array
do
    used_space[i]=`echo "${used_space[i]}" | cut -d "%" -f 1` #updating array element by removing % sign
    if [ ${used_space[i]} -gt 90 ] #checking for less than 10% freespace
    then
        echo Filesystem ${file_system[i]} have less than 10% freespace
    fi
done
