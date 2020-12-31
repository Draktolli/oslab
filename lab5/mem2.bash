#!/bin/bash
rep_file=report2.log

rm -f $rep_file

i=0
arr=()
while true; 
do
	if [[ i -gt 0 && $((i % 100000)) == 0 ]]; then
	echo ${#arr[*]} » $rep_file
	fi

	arr+=(1 2 3 4 5 6 7 8 9 10)
	let i=$i+1
done