#!/bin/bash
check='^[0-9]+$'
if [[ "$2" =~ $check ]]
	then
	if [[ -n "$2" ]]
		then
			exit 0
	fi
		echo -e "this is not a number"
		exit 3
	else
		exit $2
fi
