<<Documentation
Name        : Hargovind Singh
Date        : 08-07-2020
Description : script to lock down file permissions for a perticular directory
Input       : directory name through command line
Output      :
Documentation

#write you code here

#! /bin/bash
if [ $# -ne 0 ] #checking for the argument in command line
then
    if [ -d $1 ] #checking whether it is directory or not
    then
        cd $1  #changing directory to given one
        arr=(`ls`)  #storing all file name in array

        echo Before locking
        ls -l

        for i in `seq 0 $((${#arr[@]}-1))`  #loop for locking the permission
        do
            chmod go-rw ${arr[$i]}
        done

        echo
        echo After locking
        ls -l
    else
        echo its not a directory
    fi

else
    echo Please pass the directory in command line. #error message
fi

