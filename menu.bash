#!/bin/bash
if [[ -n "$1" ]]
then
	case $1 in
		calc)
		if [[ -f "calc.bash" ]]
		then
		bash ./calc.bash $2 $3 $4
		else
		echo -e "no script"
		exit 8
		fi
		;;
		search)
		if [[ -f "search.bash" ]]
		then
		bash ./search.bash $2 $3
		else
		echo -e "no script"
		exit 8
		fi
		;;
		reverse)
		if [[ -f "reverse.bash" ]]
		then
		bash ./reverce.bash $2 $3
		else
		echo -e "no script"
		exit 8
		fi
		;;
		strlen)
		if [[ -f "strlen.bash" ]]
		then
		bash ./strlen.bash $2
		else
		echo -e "no script"
		exit 8
		fi
		;;
		log)
		if [[ -f "log.bash" ]]
		then
		bash ./log.bash
		else
		echo -e "no script"
		exit 8
		fi
		;;
		exit)
		if [[ -f "exit_.bash" ]]
		then
		bash ./exit_.bash $2
		else
		echo -e "no script"
		exit 8
		fi
		;;
		help)
		if [[ -f "help.bash" ]]
		then
		bash ./help.bash
		else
		echo -e "no script"
		exit 8
		fi
		;;
		interactive)
		if [[ -f "interactive.bash" ]]
		then
		bash ./interactive.bash
		else
		echo -e "no script"
		exit 8
		fi
		;;
		*)
		echo -e "wrong argument"
		exit 5
		esac
else
echo -e "no arguments"
exit 2
fi

