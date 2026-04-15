#!/bin/bash

# What are variables?
# --------------------
# Variables are small lines of code that store information
# Mr. Warren gave the analogy of variables being boxes of information that can hold different things
#
# When do we use them?
# --------------------
# Variables are used when you want to store, reference, or manipulate information, and to provide clarity
# and readability to your code
# To get the values of variables, use a $ followed by the variable name
#	eg) variable='test'
#		echo $variable
#		OUTPUT -> test
#
# Types of variables:
# --------------------
# Variables are mainly split up into different types:
# 	Interger (int): 					whole numbers (1, 2, 3, etc.)
# 	Boolean (bool):						either TRUE or FALSE
# 	String (str):						stores characters/text
#	Arrays/Lists:						look for arrays.sh in this repository for explaination
#	Floating-Point (float and double):	numbers that can have decimals, float = 6-7 decimal places, double = 15-16 decimal places
#
# Variable also have a property known as 'scope':
# 	Global (default):	Variables defined outside of any function or block of code, making them accessible throughout the entire
#						program/script/shell. Variables with this type are lost/destroyed when the shell ends. In Bash, all
#						variables defined in scripts are Global by default. Scripts will lose their variables because scripts
#						are run in sub-shells in bash.
#	Local:				Variables defined within a block of code that are lost when the block finishes. You can create a local
#						variable in bash by using the keyword 'local' before assigning a value for the variable, or you can use
#						the 'declare' keyword. Local variables are not able to be used outside of whatever block they are defined
#						in. *'block' refers to a function (a block of re-usable code)
#	Other types such as 'Static' exist, but they are used in coding languages other than Bash, so I will not go over them
#
# Environment variables are a distinct type that are predefined:
#	Environment variables have names that are all uppercase, '$PATH' being an example
#	Environment variables are passed through subshells by any parent processes, and they have a session-wide scope
# 	They also are often dynamic, where the variable '$PATH' will change when you change the current path you are in
#
# Common mistakes:
# --------------------
# Trying to call variables without a dollar sign ($)
#	eg)	variable="string"
#		echo "my variable is a variable"
#		OUTPUT -> my variable is a variable
# Fix: add a dollar sign to the front a variable to get the value properly
#	eg)	variable="string"
#		echo "my variable is a $variable"
#		OUTPUT -> my variable is a string
# 
# When you assign a value to a variable, you accidently use a space around the equal sign
#	eg)	variable = "hello"
# Fix: make sure there are spaces around the equal sign
#	eg)	variable="hello"
#
# Extra info:
# --------------------
# Mr. Warren prefers the naming convention for variables to be 'snake_case' in Bash
# 'snake_case' is when you define variables where the space is replaced by an underscore and all characters are undercase
# DO NOT name variables with a number in the name; it looks weird and is bad practice
# Variables can also be given a new value when they already have one
# Some commands (like read, see user-input.sh for more info) allow a variable at the end to be defined to record the output
#
# COMMANDS TO DEMONSTRATE:
# --------------------
# Assigning to a variable and then echoing
first_name='John'
last_name='Doe'
echo "Your full name is '$first_name $last_name'" # OUTPUT -> Your full name is 'John Doe'

# Some commands allow you to define a variable and then it will assign the output to the variable
read -p 'You are now married to something, please input a new last name: ' new_name
echo "Your new last name is '$new_name'" # OUTPUT -> Your new name is '<whatever-user-inputted>'

# You can reassign values to variables that already have values
last_name=$new_name
echo "Your full name is now '$first_name $last_name'" # OUTPUT -> Your full name is now 'John <whatever-user-inputted>'