<<Documentation
Name        : Hargovind Singh
Date        : 08-07-2020
Description : script for generating 8-character password including alpha-numeric characters
Input       : 
Output      :
Documentation

#write you code here

#! /bin/bash

#[:graph:] for printable characters without space , here you can use [:print:] as well but that will include space
#fold to set the length of coloumns............head -8 for first 8 password

cat /dev/urandom |tr -dc [:graph:] | fold -w 8 | head -8
