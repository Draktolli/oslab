#!/bin/bash

pittza = $(cat .pid)

while true;
do
    read LINE
    case "$LINE" in
	"TERM")
	 	kill -SIGTERM $pittza
			exit 0
	 ;;
	 "+")
		kill -USR1 $pittza
	 ;;
	 "*")
		kill -USR2 $pittza
	 ;;
	 *)
		:
	 ;;
    esac
done
