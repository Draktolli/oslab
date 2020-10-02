#!/bin/bash
if [[ -n "$1" ]]
	then
		str="$1"
		echo "${#str}"
	else
		echo -e "no or not enough argumenrs"
		exit 2
fi
