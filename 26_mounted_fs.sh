<<Documentation
Name        : Hargovind Singh
Date        : 09-07-2020
Description : script to determine whether a given file system or mount point is mounted.
Input       : file-system through command line
Output      :
Documentation

#write you code here

#! /bin/bash
if [ $# -eq 1 ] #checking if command line argument passed or not
then
    arr1=(`df | tr -s [:print:] | cut -d " " -f 1`) #array to store filesystem
    arr2=(`df | tr -s [:print:] | cut -d " " -f 6`) #array to store where does filesystem mounted means mount point
    arr3=(`df | tr -s [:print:] | cut -d " " -f 5`) #array to store used space
    arr4=(`df | tr -s [:print:] | cut -d " " -f 4`) #array to store frre space available

    flag=0 #indicator of mounted or not
    for i in `seq 1 $((${#arr1[@]}-1))` #iterating over filesystems
    do
        if [ ${arr1[$i]} == $1 ] #matching the filesystem with given filesystem
        then
            flag=0
            echo "File-system $1 is mounted on ${arr2[$i]} and it is having ${arr3[$i]} used space with ${arr4[$i]}KB free." 
            break
        else
            flag=1
        fi
    done
    if [ $flag -eq 1 ] #checking if filesystem is not mounted
    then
        echo $1 is not mounted.
    fi
else
    echo Please pass the name of file-system through command line.
fi
