<<Documentation
Name        : Hargovind Singh
Date        : 08-07-2020
Description : script to print greeting based on time
Input       :
Output      :
Documentation

#write you code here
#######################################################
# give the absolute path of this file to .bashrc file #
#######################################################
#! /bin/bash
hour=`date +%r | cut -d ":" -f 1`  #extracting hour digit
flag=`date +%r | cut -d " " -f 2`  #extracting AM/PM

if [ $flag == 'AM' ] #whether for AM time
then
    if [ $hour -lt 12 -a $hour -gt 4 ] #checking hour (5 AM - 11:59 AM)
    then
        greeting="Good morning user,"
    else
        greeting="Good night user,"
    fi
else
    if [ $hour -lt 2 ]  # for 12 PM - 1:59 PM
    then
        greeting="Good noon user,"
    else
        if [ $hour -gt 1 -a $hour -lt 5 ] # for 2 PM - 4:59 PM
        then
            greeting="Good afternoon user,"
        else
            if [ $hour -gt 4 -a $hour -lt 9 ] # for 5 PM -8:59 PM
            then
                greeting="Good evening user,"
            else
                greeting="Good night user,"
            fi
        fi
    fi
fi

echo "$greeting Have nice day!"
echo "this is `date +%d` in `date +%B` of `date +%Y` (`date +%r`)"
