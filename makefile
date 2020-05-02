README.md: guessinggame.sh
	touch README.md
	echo "# The Guessing Game - Project for The Unix Workbench" >> README.md
	date >> README.md
	echo "Number of lines of code contained in guessinggame.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md	
