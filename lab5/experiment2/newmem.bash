#!/bin/bash

if [[ $# -ne 1 ]]; then
	echo "Invalid number of parameters"
	exit
fi
PID=$$
declare -a array
declare -a numbers=(1 2 3 4 5 6 7 8 9 10)

while true
do
	array+=(${numbers[*]})
	if [[ "${#array[@]}" -ge $1 ]]
	then
		#!echo "${#array[@]}"
		kill $PID
	fi
done