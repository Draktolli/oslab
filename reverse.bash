#!/bin/bash

if ! [ -r $1 ]; then
echo "Error: не получается прочесть первый файл">&2; exit -10
fi
if [[ -z "$1" ]]; then
echo "Error: вы не передали имя файла ввода">&2; exit -2
fi
if [[ -z "$2" ]]; then
echo "Error: вы не передали имя создаваемого/существующего файла">&2; exit -2
elif ! [ -f $2 ]; then
touch $2 &> /dev/null
tac $1 > $2
elif ! [ -w $2 ]; then
echo "Error: не получается переписать второй файл">&2; exit -9
fi
if ! [[ -f "$1" ]]; then
echo "Error: файл не существует">&2; exit -7
fi
if ! [[ -f "$2" ]] ; then
echo "Error: файл не существует">&2; exit -7
fi
 tac $1 > $2