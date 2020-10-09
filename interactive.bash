#!/bin/bash
Menu(){
echo "Menu"
echo "a- calc"
echo "b- search"
echo "c- reverse"
echo "d- srtlen"
echo "e- log"
echo "f- help"
echo "g- exit"
echo "write comand to start"
read com
case "$com" in
	a)
	echo "choose sum/sub/div/mul"
	read mat
	echo "write first number"
	read num1
	echo "write second number"
	read num2
	bash ./calc.bash $mat $num1 $num2
	;;
	b)
	echo "write directory"
	read dir
	echo "write string you want to search"
	read str
	bash ./search.bash $dir $str
	;;
	c)
	echo "write first file"
	read f1
	echo "write second file"
	read f2
	bash ./reverse.bash $f1 $f2
	;;
	d)
	c='^[0-9]+$'
	echo "write your string"
	read str
	if ! [[ "$ex1" =~ $c ]]
	then
		echo -e "not a number"
	else
		bash ./strlen.bash $str
		return
	fi
	;;
	e)
	bash ./log.bash
	;;
	f)
	bash ./help.bash
	;;
	g)
	echo "write exit code"
	c='^[0-9]+$'
	read ex1
	if ! [[ $ex1 =~ $c ]]
		then
		echo -e "this is not a number"
		else
		bash ./exit_.bash $ex1
		return
	fi
	;;
	*)
	echo "wrong letter"
	;;
esac
Menu
}
Menu

