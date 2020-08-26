<<Documentation
Name        : Hargovind Singh
Date        : 08-07-2020
Description : write script that takes any number of directories as command line arguments and then liststhe contents of each of these directories.
Input       :
Output      :
Documentation

#write you code here

#! /bin/bash

if [ $# -eq 0 ] #checking for the arguments
then
    echo *
else
    for i in `seq 0 `$@`` # iterating to all directories passed through command line
    do
        
        if [ -d $i ] #checking whether it is directory or not
        then
            cd ~/  # changing directory to home
            echo "/home/user:"
            echo *
            cd $i    #changing director to given input
            echo "$i:"
            echo *
        else
            echo 27_output_ls.sh: Cant access $i, No such a file or directory.  #error massage
        fi
    done
fi
    

