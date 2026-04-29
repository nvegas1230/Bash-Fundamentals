#!/bin/bash

# What are conditionals?
# --------------------
# Conditionals are statements in code that will only run when a certain condition is filled (hence the name)
#
# Types of conditionals:
# --------------------
# There are 3 main types of conditionals:
#	1)	If statements
#			Will run IF the condition is fulfilled
#			eg) var=1
#				if [ $var -eq 1 ]; then
#					echo "above is true, this will run"
#				fi
#	2)	Else statements
#			Will run if the condition(s) above are unfilfilled
#			eg) if [ $var -eq 2 ]; then
#					echo "this will not run"
#				else
#					echo "above is not true, running this instead"
#				fi
#	3)	Elif statements
#			Will run if the condition(s) above are unfilfilled and the condition provided is fulfilled
#			eg) if [ $var -eq 2 ]; then
#					echo "this will not run"
#				elif [ $var -eq 3 ]; then
#					echo "above is not true AND this is not true, not running"
#				elif [ $var -eq 1 ]; then
#					echo "both above are not true, running this instead"
#				elif [ $var -eq 3 ]; then
#					echo "above has already run so this will not be run, regardless of if it is true"
#				fi
#
# When do we use them?
# --------------------
# Conditionals are used anytime you need to check a condition
# This is useful for user input, pattern matching, looking for files, and much more
# Conditionals are extremely important and will dictate the execution of a script
# Conditionals must start with an 'if', have 'then' after the conditional, and end the block with 'fi'
#	eg)	if [ condition ]; then
#			:
#		fi
# You should also put a semicolon after the condition to state the line end
#
# Common mistakes:
# --------------------
# Using elifs by themselves
#	eg) elif [ condition ]; then
#			:
#		fi
#	Fix: switch to an if statment (just remove the el from elif)
# Placing multiple else statements
#	eg) if [ condition ]; then
#			:
#		else
#			:
#		else
#			:
#		fi
#	Fix: switch the extra else statments to elif or delete them
# Forgetting to end with fi
#	eg) if [ condition ]; then
#			:
#	Fix: add an 'fi' to indicate the end of the block
# Leaving statements empty
#	eg) if [ condition ]; then
#			
#		fi
#	Fix: add a colon to the block, delete the conditional, or add code
#
# Extra info:
# --------------------
# Creating a function without code will error; use a colon to tell the script there is nothing to run
#	eg) if [ condition ]; then
#			: <- tells the computer that there is no code to run here
#		fi
#
# COMMANDS TO DEMONSTRATE:
# --------------------

# Demonstrating some conditionals and their use case:
read -p "Input the number 1 or 2: " input # This will get their input
if [ "$input" -eq 1 ]; then # An initial 'if' to check if input is 1
	echo 'You inputted 1'
elif [ "$input" -eq 2 ]; then # Another 'elif' to check if input is 2 when it isnt 1
	echo 'You inputted 2!'
else # If the input is something else entirely (the 2 conditionals above don't run), it will resort to this
	echo "You inputted $input, which is not one of the options I gave >:("
fi