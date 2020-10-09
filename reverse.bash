#!/bin/bash
if [[ -n "$1" && -n "$2" ]]
	then
	if ! [[ -w "$2" ]]
	then
	echo -e "can't write on file"
	exit 9
	fi
	if [[ -r "$1" ]]
		then
		tac $1>$2
	else -e echo "no file" exit 7
	fi
else -e echo "no or not enough arguments" exit 2
fi
