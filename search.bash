#!/bin/bash
if [[ -n "$1" && -n "$2" ]]
	then
	if [[ -d "$1" ]]
	then
		if ! [[ -r "$1" ]]
			then echo -e "can't read directory "
			exit 10
		else
		grep -r "$2" "$1" 2>/dev/null
		fi
	else echo -e "no such dir" exit 6
	fi
else echo -e "no or not enough arguments" exit 2
fi

