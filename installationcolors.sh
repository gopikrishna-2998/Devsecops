#!/bin/bash

USERID=$(id -u)
r="\e[31m"
g="\e[32m"
y="\e[33m"
n="\e[0m"

if [ $USERID -ne 0 ]; then
   echo -e "$r error: check the root privelages $n"
   exit 1
fi
validate(){
    if [ $1 -ne 0 ]; then
       echo "install of $2 is failure"
       exit 1
    else
       echo -e "install of $2 is $g sucess $n"
}

dnf list installed apache
if [ $? -ne 0 ]; then
    dnf install apache -y
    validate $? "apache"
else
    echo -e " $y now installed $n"
fi
