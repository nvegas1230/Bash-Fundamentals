#!/bin/bash

# What are for-loops?
# --------------------
# For-loops are blocks of code that will run another block of code a certain amount of times
#
# Types of for-loops:
# --------------------
# List-based for-loops:
#	Loops through a list of values
#	eg) fruits="apple banana orange"
#		for item in $fruits; do
#			echo "$item"
#		done
#
# Range-based for-loops:
#	Loops through a range of numbers
#	eg) for num in {1..5}; do
#			echo "$num"
#		done
#
# C-style for-loops:
#	Loops similarly to languages like C/Java
#	eg) (start=1, end=5)
#		for (( i=1; i<=5; i++ )); do
#			echo "$i"
#		done
#
# File-based loops:
#	Loops through files or directories using pattern matching
#	eg) (Looks for all .txt files in the current directory)
#		for file in *.txt; do
#			echo "$file"
#		done
#
# When do we use them?
# --------------------
# We use for-loops whenever we want to repeat code multiple times
# They are especially useful when working with files, lists, ranges, or repeated calculations
# They also help reduce repeating lines in code and make scripts cleaner
#
# Common mistakes:
# --------------------
# Forgetting the 'do' keyword
#	eg) for i in 1 2 3
#			echo "$i"
#		done
#	Fix: for i in 1 2 3; do
#			echo "$i"
#		done
# Forgetting the 'done' keyword
#	eg) for i in 1 2 3; do
#			echo "$i"
#	Fix: Close the loop using 'done'
# Using commas in ranges
#	eg) {1,5}
#	Fix: Use two periods instead
#		{1..5}
# Forgetting quotes around variables with spaces
#	eg) echo $file
#	Fix: Wrap variables in quotes
#		echo "$file"
# Using single brackets instead of double parenthesis in C-style loops
#	eg) for [ i=1; i<=5; i++ ]
#	Fix: Use double parenthesis
#		for (( i=1; i<=5; i++ ))
# Extra info:
# --------------------
# You can use break to stop a loop early
# You can use continue to skip the current loop iteration
# Loops can work together with conditionals
# Variables created in loops can still exist outside the loop
#
# COMMANDS TO DEMONSTRATE:
# --------------------

echo 'C-style for-loop demonstration'
for (( i=1; i<=5; i++ )); do
	echo "Counter: $i"
done

echo -e '\nFile-based for-loop demonstration'
for file in *.sh; do
	echo "Shell script found: $file"
done

echo -e '\nBasic list-based for-loop demonstration'
for fruit in apple banana orange; do
	echo "$fruit"
done

echo -e '\nRange-based for-loop demonstration'
for number in {1..5}; do
	echo "Number: $number"
done