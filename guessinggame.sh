#!/usr/bin/env bash
# File: guessinggame.sh

function guessinggame {
	echo "Welcome to the guessing game!"
	correct_number=$(ls | wc -l)
	while true
	do
		echo "Guess how many files are in the directory and press Enter."
		read guess
		if [[ $guess -eq $correct_number ]]
		then
			break
		else
			if ! [[ $guess =~ ^[0-9]+$ ]]
			then
				echo "You did not enter an integer. Try again."
			elif [[ $guess -gt $correct_number ]]
			then
				echo "Your guess is too high. Try again."
			else
				echo "Your guess it too low. Try again."
			fi
		fi

	done

	echo "Congratulations! You guessed the correct number of files."
}
