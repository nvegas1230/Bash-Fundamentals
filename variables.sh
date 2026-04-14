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
#						in.
#	Other types such as 'Static' exist, but they are used in coding languages other than Bash, so I will not go over them
#
# Common mistakes:
# --------------------
# 
#
# Extra info:
# --------------------
# 
#
# COMMANDS TO DEMONSTRATE:
# --------------------
#