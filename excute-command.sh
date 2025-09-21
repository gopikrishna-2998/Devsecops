#!/bin/bash

#Date=$(date)

Start_time=$(date +%s)

sleep 10

End_time=$(date +%s)

total_time=$(($End_time-$Start_time))
echo "date: $total_time in seconds"