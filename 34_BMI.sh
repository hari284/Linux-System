<<Documentation
Name        : Hargovind Singh
Date        : 09-07-2020
Description : script to calculate BMI
Input       : 50.1 1.8
Output      : Your underweight
Documentation

#write you code here

#! /bin/bash

#...reading weight and height....
echo -n "Enter the weight in kg : "
read weight
echo -n "Enter the height in meters : "
read height

BMI=`echo "scale=2; $weight/($height*$height)" | bc` #calculating BMI
if [ `echo "$BMI < 18.5" | bc` -eq 1 ] #checking for underweight BMI
then
    echo Your Underweight.
else 
    if [ `echo "$BMI < 25" | bc` -eq 1 ] #checking for normal BMI
    then
        echo Your Normal.
    else
        if [ `echo "$BMI < 30" | bc` -eq 1 ] #checking for overweight BMI
        then
            echo Your Overweight.
        else
            echo Your Obese.  # if all becomes false then obese BMI
        fi
    fi
fi
