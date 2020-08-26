<<Documentation
Name        : Hargovind Singh
Date        : 05-07-2020
Description : rename a file/directory replaced by lower/upper case letters.
Input       : file.txt
Output      : FILE.txt
Documentation

#write you code here

#! /bin/bash
#echo enter the directory path: 
#read path
#setting path to given path storing the files and folders in an array
cd $1
arr=(`ls`)
len=${#arr[@]}  #calculating length of array

echo ${arr[0]}
for i in `seq 0 $((len-1))` #looping over ayyay elements
do      
    if [[ -f ${arr[$i]} ]] #checking whether file or not     
    then 
             mv  ${arr[$i]}  `echo ${arr[$i]} | tr "[A-Z]" "[a-z] "`
    else
             mv  ${arr[$i]}  `echo ${arr[$i]} | tr "[:lower:]" "[:upper:] "`
    fi

done

echo Files are rename in lowercase and directories are renamed in uppercase





    

