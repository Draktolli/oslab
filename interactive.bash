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
	bash /root/lab1/calc.bash $mat $num1 $num2
	;;
	b)
	echo "write directory"
	read dir
	echo "write string you want to search"
	read str
	bash /root/lab1/search.bash $dir $str
	;;
	c)
	echo "write first file"
	read f1
	echo "write second file"
	read f2
	bash /root/lab1/reverse.bash $f1 $f2
	;;
	d)
	echo "write your string"
	read str
	bash /root/lab1/strlen.bash $str
	;;
	e)
	bash /root/lab1/log.bash
	;;
	f)
	bash /root/lab1/help.bash
	;;
	g)
	echo "write exit code"
	read ex1
	bash /root/lab1/exit_.bash $ex1
	return
	;;
	*)
	echo "wrong letter"
	;;
esac
Menu
}
Menu

