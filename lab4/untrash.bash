#!/bin/bash
if [[ $# -lt 1 ]]; 
        then
            echo "Troubbles with parametrs"
            exit
        elif [[ $# -gt 1 ]];
             then 
                 echo "Troubbles with parametrs"
                 exit
             fi
fi

num=$(grep -c "$1;" ~/.trash.log)

if [[ $num -eq 0 ]];
        then
            echo "File not found"
            exit
else
num | while read -r line; do
        title="$1"
        p=$(grep -o "/.*"$name";" <<< "$line"| sed 's/;//')
        link=$(grep -o "[0-9]*$" <<< "$line")
        echo -n "Recover '$p'? (enter y/n):"
        read answer </dev/tty
        case "$answer" in 
                "n")
                    echo "Way for olds"; 
                "y")
                    d=$(sed "s/\/"$title"/\//" <<< "$p")
                	if [[ !(-d "$d") ]]; 
                        	then
                            	p="$HOME/"$title""
                            	echo -e "Directory "$d" not exit\nWay_of_love: "$HOME/""
                fi
                if [[ -f "$p" ]]; then
                        while true; do
                        echo -ne "Such file already exists\nChange file name? (enter y/n):"
                        read answ </dev/tty
                        case "$answ" in
                        "n")
                                echo "File not changed";
                        "y")
                                echo -n "Enter new name: "
                                read newName </dev/tty
                                newPath=$(sed "s/\/"$name"/\/"$newName"/" <<< "$p")
                                if [[ !(-f "$newPath") ]]; then
                                                name="$newName"
                                                path="$newPath"
                                                break
                                fi
                        ;;
                        *)
                        exit
                        ;;
                        esac
                        done
                fi
                ln ~/.trash/"$link" "$p"
                rm ~/.trash/"$l"
                sed -i "/"$l"$/d" ~/.trash.log
                exit
        ;;
        *)
                :
        ;;
        esac
done
fi
