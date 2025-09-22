#!/bin/bash

USERID=$(id -u)
r="\e[31m"
g="\e[32m"
y="\e[33m"
n="\e[0m"

if [ $USERID -ne 0 ]; then
   echo "error: check the root privelages"
   exit 1
fi
validate(){
    if [ $1 -ne 0 ]; then
       echo  "install $2 of  is failure"
       exit 1
    else
       echo  "install $2 of  is  sucess "
}

dnf list installed apache
if [ $? -ne 0 ]; then
    dnf install apache -y
    validate $? "apache"
else
    echo  " now installed "
fi
