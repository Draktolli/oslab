#!/bin/bash

if ! [[ $# -eq 1 ]]; then
echo"Error: "no argument">&2; exit -2
fi
string="$@"
echo "${#string}"