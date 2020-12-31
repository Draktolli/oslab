#!/bin/bash
mkfifo task5_pipe
./task5_generator.bash & ./task5_handler.bash
rm task5_pipe