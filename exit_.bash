#!/bin/bash
check='^[0-9]+$'
if [[ -n "$1" ]]
	then
	if ! [[ "$1" =~ $check ]]
		then
			echo -e "this is not a number"
			exit 3
		else
			exit $1
	fi
	else
	exit 0
fi
