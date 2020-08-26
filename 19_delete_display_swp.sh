<<Documentation
Name        : Hargovind Singh
Date        : 05-07-2020
Description : script to delete all .swp files found in your systems or directory
Input       :
Output      :
Documentation

#write you code here

#! /bin/bash

 

if [ $# -eq 1 ] #...checking for command line argument......
then
    cd $1
    arr=(`find ./ -type f -name "*.swp"`)
    if [ ${#arr[@]} -eq 0 ] #.....if there are no .swp files in array.....
    then
        echo "No swp files found in $1"
    else
        echo "swp file found : " 
        echo "`find ./ -type f -name "*.swp"` "
        
       #..........deleting .swp files...........     
        rm ./*.swp
       #........................................        
    fi
else
    if [ $# -eq 0 ] #....if command line argument is not given....
    then
        arr=(`find ~/ -type f -name "*.swp"`)
    fi

    if [ ${#arr[@]} -ne 0 ]  #........if there are files in array of .swp formate......
    then
        echo "swp file found : " 
        echo "`find ~/ -type f -name "*.swp"` "

       #......deleting .swp files..............
        rm ~/*.swp
       #....................................... 
    else
        echo "No swp file found."
    fi      
fi



