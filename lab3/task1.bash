#!/bin/bash

time_test=$(date +"%d-%m-%Y_%H-%M")

directest=$HOME/test/

FileReport=~/report

mkdir $directest 2> /dev/null && (echo "Catalog created" >> $FileReport) && (touch $directest$time_test)

(ping "www.net_nikogo.ru" 2> /dev/null) || echo "$Web not found" >> $FileReport
