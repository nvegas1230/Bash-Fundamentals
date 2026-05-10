#!/bin/bash

# What are for-loops?
# --------------------
# For-loops are blocks of code that will run another block of code a certain amount of times
#
# Types of for-loops:
# --------------------
# List-based for-loops:
#	Loops through a list of values
#	eg) # fruits="apple banana orange"
#		for item in $fruits; do
#			echo "$item"
#		done
#
# Range-based for-loops:
#	Loops through a range of numbers
#	eg) # No variables needed
#		for num in {1..5}; do
#			echo "$num"
#		done
#
# C-style for-loops:
#	Loops similarly to languages like C/Java
#	eg) # start=1, end=5
#		for (( i=1; i<=5; i++ )); do
#			echo "$i"
#		done
#
# File-based loops:
#	Loops through files or directories using pattern matching
#	eg) # Looks for all .txt files in the current directory
#		for file in *.txt; do
#			echo "$file"
#		done
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