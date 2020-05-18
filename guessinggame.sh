#!urs/bin/env bash

echo "---GUESSING GAME PROGRAM----"
echo "Enter your guess"
read response


function count_file {
local no=$( ls -l | wc -l )-1
echo $no
}



count=$(count_file)

while [[ $response -ne $count ]]
do
	if [[ $response -gt $count ]]
	then
		echo "Sorry your guessed number is high"
	else
		echo "Sorry your guessed number is low"
	fi
	echo "try again"
	read response
done

echo "Congrats! you guessed the correct number.."
