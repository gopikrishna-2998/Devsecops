#!/bin/bash

#conditions
number=$1

if [$number -lt 10]; then
    echo "given number $number is less than 10"
else
    echo "given number $number is grether or equal 10"
fi