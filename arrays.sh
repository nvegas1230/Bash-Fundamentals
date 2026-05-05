#!/bin/bash

# What are arrays?
# --------------------
# Arrays are a type of data structure that stores more than value in one variable
# In bash, arrays are only one-dimensional, which means you cannot nest arrays
# Arrays can be intitialized with a specific variable type, or you can put multiple different
# variable types into one array
#
# Types of arrays:
# --------------------
# There are two main types of arrays in bash
#	Indexed arrays:
#		you would create an indexed array by assigning it to a variable
#			eg) array_variable=(10 2 5 "hi" 7)
#		or by initializing it and then assigning to it later
#			eg) declare -a array_variable
#		you can get elements from the array by their index or with @
#			eg) echo ${array_variable[0]}
#				output -> 10
#			eg) echo ${array_variable[@]}
#				output -> 10 2 5 "hi" 7
#	Associative arrays (a.k.a. dictionaries, Bash 4.0+):
#		unlike indexed arrays, you can only make them by declaring them first
#			eg) declare -A array_variable
#		however, you can still assign to them right away at initialization
#			eg) declare -A array_variable=([job]="chef" [pay]=50)
#		you can add elements to the array by assigning or appending
#			eg) array_variable[location]="pizza pizza"
#				array_variable+=([location]="pizza pizza")
#		you can get elements the same way as indexed arrays, except that the index
#		is replaced by the element name
#			eg) echo ${array_variable[job]}
#				output -> chef
#			eg) echo ${array_variable[@]}
#				output -> chef 50
#			
# When do we use them?
# --------------------
# 
#
# Common mistakes:
# --------------------
# 
#
# Extra info:
# --------------------
# Array elements are seperated by space, not comma
#
# COMMANDS TO DEMONSTRATE:
# --------------------