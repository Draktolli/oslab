#!/bin/bash

currop="+"
varb=1

(tail -f task5_pipe) |
while true;
do
	read LINE

	echo $LINE

	case "$LINE" in
		"+")
			currop="$LINE"
			echo "Plus"
		;;
		"*")
			currop="*"
			echo "Multi"
		;;
		[0-9]*)
			case $curr_operation in
				"+")
					result=$(($varb + $LINE))
					echo "$result"
				;;
				"*")
					result=$(($varb * $LINE))
					echo "$result"
				;;
			esac
		;;
		"QUIT")
			killall tail
			exit 0
		;;
		*)
                        echo "Unlucky option"
			killall tail
			exit 1
		;;
	esac
done
