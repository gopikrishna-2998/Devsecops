#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then 
   echo "error: check the root access"
   exit 1
fi

dnf install redis -y

if [ $? -ne 0 ]; then
   echo "error: check the process code"
   exit 1

else
   echo "redis installed successfully"
fi 