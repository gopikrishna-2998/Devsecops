#!/bin/bash

USERID=$(id -u)
r="\e[31m"
g="\e[32m"
y="\e[33m"
n="\e[0m"
LOGS_FOLDER="var/log/Devsecops"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE=$LOGS_FOLDER/$SCRIPT_NAME.log

mkdir -p $LOGS_FOLDER
echo "script exicuted $(date)"

if [ $USERID -ne 0 ]; then
   echo "error: check the root privelages"
   exit 1
fi
validate(){
    if [ $1 -ne 0 ]; then
       echo "error $2 installing failure"
       exit 1
    else
        echo "installing $2 is success"
    fi
}

#$@

for package in $@
do 
dnf list installed $package &>> LOG_FILE

if [ $? -ne 0 ]; then
   dnf install $package &>> LOG_FILE
   validate $? "$package"
else
   echo "pacakage is already installed"
fi
done
