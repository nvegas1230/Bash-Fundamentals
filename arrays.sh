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
#			eg) array_variable=(10, 2, 5, "hi", 7)
#		or by initializing it and then assigning to it later
#			eg) declare -a array_variable
#		you can get elements from the array by their index or with @
#			eg) echo ${array_variable[0]}
#				output -> 10
#			eg) echo ${array_variable[@]}
#				output -> 10 2 5 "hi" 7
#	Associative arrays (dictionaries):
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
# 
#
# COMMANDS TO DEMONSTRATE:
# --------------------