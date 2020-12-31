#!/bin/bash

./task4_loop.bash &
pid1=$!
./task4_loop.bash &
pid2=$!
./task4_loop.bash &
pid3=$!

renice +10 -p $pid1
kill $pid3

at now + 1 minute <<< "pkill task4_loop.bash"
