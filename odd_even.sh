#!/bin/bash

echo "given number"
read Number

if [ $(($Number % 2)) -eq 0 ]; then
   echo "number is $Number even"
else
   echo "number is $Number odd"
fi