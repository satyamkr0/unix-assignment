ans=$(ls -1 | wc -l) #number of files in the directory


function welcome      #a small welcome message
{
	echo "Please enter your name:"
	read name
	echo "Hi $name! Please guess the number of files in current directory ($(pwd))."
}

function inputguess            #function to check correctness of the input
{
	read input
	while [[ ! $input =~ ^[0-9]+$ ]] ; do
		echo "Hey $name, Please try again with a non-negative integer value..."
		read input
	done
}

function checkmyguess        #function to check the guess
{
	if [[ $input -gt $ans ]]; then
		echo "Your guess is higher than the answer.Please enter a lower number..."
		inputguess
	else
		echo "Your guess is lower than the answer.Please enter a higher number..."
		inputguess
	fi
}

#execution starts here
welcome
inputguess
while [[ $input -ne $ans ]]; do
	checkmyguess
done
echo "Congrats $name! You got the right answer."
echo "bye..."

exit 0
