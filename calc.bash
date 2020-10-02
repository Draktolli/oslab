#!/bin/bash
check='^[+-]?[0-9]+$'
if [[ -n "$2" ]]
then
case $1 in
	sum)
	if [[ -n "$2" && -n "$3" ]] #проверка на то, что аргументы есть
		then
		if ! [[ "$2" =~ $check && "$3" =~ $check ]] #проверка на то, что аргументы числа
			then echo -e "this is not a number" 
			exit 3
	fi
		result=$(( $2 + $3 ))
		echo "$result"
	else
	echo -e "no or not enough arguments" 
	exit 2
	fi
	;;
	sub)
	if [[ -n "$2" && -n "$3" ]]
		then
		if ! [[ "$2" =~ $check && "$3" =~ $check ]]
			then -e echo "this is not a number" 
			exit 3
		fi
		result=$(( $2 - $3 ))
		echo "$result"
	else
	echo -e "no or not enough arguments" 
	exit 2
	fi
	;;
	mul)
	if [[ -n "$2" && -n "$3" ]]
		then
		if ! [[ "$2" =~ $check && "$3" =~ $check ]]
			then echo -e "this is not a numer"
			exit 3
		fi
		result=$(( $2 * $3 ))
		echo "$result"
	else
	echo -e "no or not enough argument"
	exit 2
	fi
	;;
	div)
	if [[ -n "$2" && -n "$3" ]]
		then
		if ! [[ "$2" =~ $check && "$3" =~ $check ]]
			then echo -e "this is not a number" 
			exit 3
		fi
		if [[ "$3" -ne 0 && "$3" -ne -0 && "$3" -ne +0 ]]
			then
			result=$(( $2 / $3 ))
			echo "$result"
		else
		echo -e "can't div on 0" 
		exit 4
		fi
	else
	echo -e "no or not enough arguments" 
	exit 2
	fi
	;;
	*)
	echo -e "wrong argument" 
	exit -5
esac
else echo -e "you didn't choose comand" 
exit 1
fi
