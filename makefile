all: README.md

README.md:
	echo '## Submission for Unix Workbench assignment.' > README.md
	echo '\`README.md\` was created using \`makefile\` at $(shell date).' >> README.md
	echo 'Number of lines in \`guessinggame.sh\` is $(shell wc -l guessinggame.sh | egrep -o "[0-9]+")' >> README.md
