#!/bin/bash
if [[ -n "$1" ]]
then
	case $1 in
		calc)
		if [[ -f /root/lab1/calc.bash ]]
		then
		bash /root/lab1/calc.bash $2 $3 $4
		else
		echo -e "no script"
		exit 8
		fi
		;;
		search)
		if [[ -f /root/lab1/search.bash ]]
		then
		bash /root/lab1/search.bash $2 $3
		else
		echo -e "no script"
		exit 8
		fi
		;;
		reverse)
		if [[ -f /root/lab1/reverse.bash ]]
		then
		bash /root/lab1/reverce.bash $2 $3
		else
		echo -e "no script"
		exit 8
		fi
		;;
		strlen)
		if [[ -f /root/lab1/strlen.bash ]]
		then
		bash /root/lab1/strlen.bash $2
		else
		echo -e "no script"
		exit 8
		fi
		;;
		log)
		if [[ -f /root/lab1/log.bash ]]
		then
		bash /root/lab1/log.bash
		else
		echo -e "no script"
		exit 8
		fi
		;;
		exit)
		if [[ -f /root/lab1/exit_.bash ]]
		then
		bash /root/lab1/exit_.bash $2
		else
		echo -e "no script"
		exit 8
		fi
		;;
		help)
		if [[ -f /root/lab1/help.bash ]]
		then
		bash /root/lab1/help.bash
		else
		echo -e "no script"
		exit 8
		fi
		;;
		interactive)
		if [[ -f /root/lab1/interactive.bash ]]
		then
		bash /root/lab1/interactive.bash
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

