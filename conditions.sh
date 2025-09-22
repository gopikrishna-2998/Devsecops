#!/bin/bash

#conditions
Number=$1

if [$Number -lt 10 ]; then
    echo "given number $Number is less than 10"
else
    echo "given number $Number is greater than or equal 10"
fi