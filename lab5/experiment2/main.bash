#!/bin/bash

exec 2>/dev/null
if [[ $# -ne 2 ]]; then
	echo "Invalid number of parameters"
	exit
fi

K=$1
N=$2

for (( i=0; i < $K; i++ )); do
	./newmem.bash $N &
    sleep 1s
done