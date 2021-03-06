#!/bin/bash
nowadate = $(date +"%F")
sourceDir = "/home/kules/source"
backRF="/home/kules/backup-report"
userDir="/home/kules"
lastBackup=$(ls $userDir | grep -e "Backup-[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}" | sort -n | tail -n 1)
dback=""
if [[ -z $lastBackup ]]
then
	dback="Backup-$nowadate"
else
	dateLastBackup="$(echo $lastBackup | awk -F "-" '{print $2"-"$3"-"$4}')"
	sub="$(( $(date -d $nowadate +"%s") - $(date -d $dateLastBackup +"%s")))"
	let sub=sub/60/60/24
	if [[ $sub -lt 7 ]]
	then
		dbakc=$lastBackup
	else
		dbsck="Backup-$nowadate"
	fi
fi
fullNameBackupDir="$userDir/$dback"
if [[ ! -d "$fullNameBackupDir" ]]
then
	mkdir "$fullNameBackupDir"
	cp -a -T "$sourceDir" "$fullNameBackupDir"
	echo "Backup $dback was created on $nowadate">>"$backRF"
	echo $(ls "$sourceDir")>>"$backRF"
else
	renamed=""
	copied=""
	for nowFile in $(ls "$sourceDir")
	do
		if [[ -f "$fullNameBackupDir/$nowFile" ]]
		then
			fileSource="$sourceDir/$nowFile"
			fileBackup="$fullNameBackupDir/$nowFile"
			sizeBackup=$(wc -c "$fileBackup" | awk '{print $1}')
			sizeSource=$(wc -c "$fileSource" | awk '{print $1}')
			if [[ $sizeBackup -ne $sizeSource ]]
			then
				mv $fileBackup $fileBackup.$nowadate
				cp -r "$fileSource" "$fullNameBackupDir"
				renamed="$renamed$fileBackup $fileBackup.$nowadate\n"
			fi
		else
			cp -r "$sourceDir/$nowFile" "$fullNameBackupDir"
			copied="$copied$nowFile\n"
		fi
	done
	echo $backupDir was changed on $nowadate>>$backRF
	echo -e $copied>>"$backRF"
	echo -e $renamed>>"$backRF"
fi
