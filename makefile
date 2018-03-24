#test

readme.md: guessinggame.sh
	echo "The title of the project is - guessing game" > readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
	date >> readme.md
