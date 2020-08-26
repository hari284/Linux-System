<<Documentation
Name        : Hargovind Singh
Date        : 05-07-2020
Description : display the longest and shortest user name on system
Input       : 
Output      : The longest name is: systemd-timesync 
            : The shortest name is: lp
Documentation

#write you code here

#! /bin/bash

#.....storing all users name in array..........
arr=(`cat /etc/passwd | cut -d ":" -f 1`)

len=${#arr[@]}
shortest_user=${arr[0]}
longest_user=${arr[0]}

#.....looping over user's name in array........
for i in `seq 0 $((len-1))`
do

    if [ ${#arr[$i]} -gt ${#longest_user} ]
    then
        longest_user=${arr[$i]}
    fi

    if [ ${#arr[$i]} -lt ${#shortest_user} ]
    then
        shortest_user=${arr[$i]}
    fi

done

echo  "The shortest name is: $shortest_user"
echo  "The longest name is: $longest_user"
