#!/bin/bash

while true; do
	read LINE
	echo "$LINE" > task5_pipe

	if [[ "$LINE" == "QUIT" ]];
	   then 
	       echo "Exit"
	       exit 0
	fi

	elif [[ "$LINE" != "+" && "$LINE" =~ [0-9]+ && "$LINE" != "*" ]];
	   then
	       echo $LINE "Data troubbles"
	       exit 1
	fi
done
