README.md: guessinggame.sh
	touch README.md
	echo "Guessing Game" > README.md
	echo "Makefile run on: $$(date +%D) at $$(date +%H:%M:%S)" >> README.md
	echo "Number of lines in guessinggame.sh:$(shell cat guessinggame.sh | wc -l)" >> README.md
	
clean:
	rm README.md
