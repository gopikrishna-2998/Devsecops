#!/bin/bash
# every think under shell is consider as string
number1=100
number2=200
name=Gopi

sum=$(($number1 + $number2))

echo "sum of two numbers: $sum"

FRIENDS=("Dhoni" "KOHLI" "Rohit")
echo "all friends:: ${FRIENDS[@]}"
echo "all friends:: ${FRIENDS[0]}"