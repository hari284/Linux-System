<<Documentation
Name        : Hargovind Singh
Date        : 07-07-2020
Description : script to convert the content of given file in lower to upper ad upper to lower
Input       : through command line and choice through read command
Output      :
Documentation

#write you code here

#! /bin/bash

if ! [ $# -eq 0 ]  # checking for the argument
then
    if [ -f $1 ] # checking whether it is file or not
    then        
        if [ -s $1 ] # checking whether file is empty or not
        then
            echo -e "1 - Lower to upper \n 2 - Upper to lower \n please select option : "
            read option
            if [ $option -eq 1 ]
            then
                cat $1 | tr "[a-z]" "[A-Z]"   #converting lower to upper
            else
               if [ $option -eq 2 ]
               then
                  cat $1 | tr "[A-Z]" "[a-z]"   #converting upper to lower
              else
                 echo please enter valid option
               fi
            fi 
        else
            echo No content inside the file
        fi
    else
        echo file is not exist
    fi
else
    echo please pass the file name through command line.
fi

