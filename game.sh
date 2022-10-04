#!/bin/bash
num=$(($RANDOM % 100 + 1))
counter=0
while true
do
	read -p "Guess : " guess
	counter=$[$counter+1]
	if [[ $guess -eq $num ]];
	then
		echo "Done In $counter Guess"
		break
	elif [[ $guess -gt $num ]];
	then
		echo " Smaller"
	elif [[ $guess -lt $num ]];
	then
		echo " Bigger"
	fi
	
done
