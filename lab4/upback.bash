#!/bin/bash

backupDir=$(find /home/user -title "Backup-[0-9]*-[0-9]*-[0-9]*" -type d -ctime -7)

title=$(sed "s/\/home\/user\///" <<< $backupDir)

if ! [ -d ~/source ]
then
  mkdir ~/source
fi

ls -1 $backupDir | while read -r file; do
    if ! [[ $file =~ .*\.[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]]; then
        cp -a $backupDir/"$file" /home/user/source/"$file"
    fi
done
