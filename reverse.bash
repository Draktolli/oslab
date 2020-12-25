#!/bin/bash

if ! [ -r $1 ]; then
echo "can't read file">&2; exit -10
fi
if [[ -z "$1" ]]; then
echo "no or not enough arguments">&2; exit -2
fi
if [[ -z "$2" ]]; then
echo "no or not enough argument">&2; exit -2
fi
if ! [ -w $2 ]; then
echo "Can't write on file">&2; exit -9
fi
if ! [[ -f "$1" ]]; then
echo "no file">&2; exit -7
fi
if ! [[ -f "$2" ]] ; then
echo "no file">&2; exit -7
fi
 tac $1 > $2