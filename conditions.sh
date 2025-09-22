#!/bin/bash

NUMBER=$1

if [ $NUMBER -lt 10 ]; then
   echo "Given number $NUMBER less than 10"
else
    echo "Given number $NUMBER grether or equal 10"
fi
