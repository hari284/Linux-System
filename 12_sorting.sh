<<Documentation
Name        : Hargovind Singh
Date        : 03-07-2020
Description : sorting the numbers in ascending or descending order
Input       : -a 4 5 2 1 8 (command line)
Output      : 1 2 4 5 8
Documentation

#write you code here

#! /bin/bash



if ! [ $# -eq 0 -o $# -eq 1 ] #checking whether user passed argument or not
then

    arr=(${@:2:$#})

    
    if [[ $1 == 'a' ]] # checking for the ascending choice 
    then
         #....bubble sort....
        for i in `seq 0 $((${#arr[@]}-1))`                
        do
            for j in `seq 0 $((${#arr[@]}-$i-1))`
            do
                if [[ ${arr[j]} -gt ${arr[$((j+1))]} ]]
                then
                    temp=${arr[j]}
                    arr[$j]=${arr[$((j+1))]}
                    arr[$((j+1))]=$temp
                fi
            done
        done
        echo ${arr[@]}
    else
        
        if [[ $1 == 'd' ]] #checking for descending choice
        then
            #...........bubble sort......
            for i in `seq 0 $((${#arr[@]}-1))`
            do
                for j in `seq 0 $((${#arr[@]}-$i-1))`
                do
                    if [[ ${arr[j]} -lt ${arr[$((j+1))]} ]]
                    then
                        temp=${arr[j]}
                        arr[$j]=${arr[$((j+1))]}
                        arr[$((j+1))]=$temp
                    fi
                done
            done
            echo ${arr[@]}
        else
            echo please pass correct choice...a for ascending and d for descending
            echo usage: sorting.sh a 9 4 3 8 2 10
        fi
    fi
else
    echo please pass the argument 
    echo usage:sorting.sh a 9 4 3 8 2 10
fi


