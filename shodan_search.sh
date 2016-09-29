## shodan_search.sh
#!/bin/bash
opt=$*

menu(){
	clear
	echo "How to use
	When the argument passed host use IP as a parameter
	Exemple: $0 host 192.168.1.1

	The above command will make one last fingerprint IP.

	Searching services and aplications
	Example: $0 windows-xp"

	
	echo
}

command(){
	shodan search --fields ip_str $opt > souser.txt;

	for liste in $(cat souser.txt);do shodan host $liste;done
	rm souser.txt
}


if [ -z $# ]; then
  menu
  exit

elif [ $1 == host ] 2> /dev/null; then
  shodan $*

elif [ $# -eq 1 ]; then
	command
else
  menu

fi
