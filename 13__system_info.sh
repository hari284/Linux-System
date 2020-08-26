<<Documentation
Name        : Hargovind Singh
Date        : 04-07-2020
Description : to print the system information in which user is interested
Input       : 2
Output      : your shell directory is /bin/bash
Documentation

#write your code here

#! /bin/basih



echo "1. Currently logged users"
echo "2. Your shell directory"
echo "3. Home directory"
echo "4. Os name & version"
echo "5. Current working directory"
echo "6. Number of users logged in"
echo "7. Show all available shells in your system"
echo "8. Hard disk information"
echo "9. Cpu information"
echo "10. Memory information"
echo "11. File system information"
echo "12. Currently running process"

echo
echo -n "Enter the choice: "
read ch   #reading choice from user

case $ch in
    1)
       echo -n "current looged users: "
       whoami
       ;;
   2)
       echo -n "Your shell directory is $SHELL"
       ;;
   3)
       echo -n "your home directory is $HOME"
       ;;
   4)
       echo "os name & version: "
       #cat /proc/version
       uname -a
       ;;
   5)
       echo -n "current working director: "
       pwd
       ;;
   6)
       w 
       ;;
   7)
       echo "available shells in your computer:  "
       cat /etc/shells
       ;;
   8)
       df -h
       ;;

   9)
       cat /proc/cpuinfo
       #lscpu
       ;;
   10)
       free -h
       #cat /proc/meminfo
       ;;
   11)
       cat /proc/filesystems
       ;;
   12)
       ps   #  ps aux|less
       #........you can use ....top.... and ps aux|less but in ps aux|less..........to come back you need to press q
       ;;
   *)
       echo "please enter valid choice" 
esac
