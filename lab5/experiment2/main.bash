#!/bin/bash

count=0
N=$1
K=$2
while [[ "$count" -ne "$K" ]]
do
    ./newmem.bash "$N" &
    count=$(($count+1))
    sleep 1s
done