#!/bin/bash

# Based on TTL values 64 linux  128 windows
# More info at https://subinsb.com/default-device-ttl-values/


function OS_DETECTION(){

	if [ -z "$1" ]
	then
		printf "Usage os-detection.sh 10.0.2.14\n"
		exit
	fi

	Osdetection=$(ping -c 1 -W 2 "$1" | grep -o "ttl=..." | sed 's/ttl=//g' > /tmp/ttl_value)

	file=$(cat /tmp/ttl_value)

	for i in $file
	do

		if [ "$i" -le "66" ]
		then
			printf "Linux (99%%)\n"
		elif [ "$i" -le "129" ]
		then
			printf "Windows (99%%)\n"
		fi


	done

	rm /tmp/ttl_value

}

OS_DETECTION "$1" 2>/dev/null
