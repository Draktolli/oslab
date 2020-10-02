#!/bin/bash
file="/var/log/anaconda/X.log"
if [[ -n "&file" ]]
	then
	cat $file|grep "(WW)"|sed "s/(WW)/\x1b[93mWarning:\x1b[0m/g"
	cat $file|grep "(II)"|sed "s/(II)/\x1b[36mInformation:\x1b[0m/g"
	else
	echo "can't read file"
	exit 1
fi

