#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "check the root privelages"
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
dnf install nginx -y
validate $? "nginx"

dnf install mysql -y
validate $? "mysql"
