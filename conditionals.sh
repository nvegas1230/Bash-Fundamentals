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
#
# Common mistakes:
# --------------------
# Using lots of elifs to check multiple conditions that are independant of eachother
#
# Extra info:
# --------------------
# 
#
# COMMANDS TO DEMONSTRATE:
# --------------------