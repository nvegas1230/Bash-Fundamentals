#!/bin/bash

# What are while-loops?
# --------------------
# While-loops are blocks of code that will continue running as long as a condition is true
# They are commonly used when you do not know exactly how many times a loop should run
#
# Types of while-loops:
# --------------------
# Basic while-loops:
#	Loops while a condition remains true
#	eg) count=1
#		while [ "$count" -le 5 ]; do
#			echo "$count"
#			((count++))
#		done
#
# Infinite while-loops:
#	Loops forever until manually stopped or broken out of
#	eg) (No variables needed)
#		while true; do
#			echo "Running forever"
#		done
#
# File-reading while-loops:
#	Loops through lines of a file
#	eg) file="example.txt"
#		while read line; do
#			echo "$line"
#		done < "$file"
#
# Input-validation while-loops:
#	Loops until valid user input is entered
#	eg) number=0
#		while [ "$number" -le 0 ]; do
#			read -p "Enter a positive number: " number
#		done
#
# Nested while-loops:
#	While-loops placed inside other while-loops
#	Useful for repeated grids/tables/etc.
#	eg) row=1
#		while [ "$row" -le 2 ]; do
#			column=1
#			while [ "$column" -le 2 ]; do
#				echo "$row,$column"
#				((column++))
#			done
#			((row++))
#		done
#
# When do we use them?
# --------------------
# We use while-loops whenever code should continue running until a condition changes
# They are useful for menus, input validation, counters, reading files, and long-running processes
# They are especially useful when the amount of repetitions is unknown beforehand
#
# Common mistakes:
# --------------------
# Forgetting to update the loop variable
#	eg) count=1
#		while [ "$count" -le 5 ]; do
#			echo "$count"
#		done
#	Fix: count=1
#		while [ "$count" -le 5 ]; do
#			echo "$count"
#			((count++))
#		done
# Forgetting the 'do' keyword
#	eg) while [ "$count" -le 5 ]
#			echo "$count"
#		done
#	Fix: while [ "$count" -le 5 ]; do
#			echo "$count"
#		done
# Forgetting the 'done' keyword
#	eg) while [ "$count" -le 5 ]; do
#			echo "$count"
#	Fix: Close the loop using 'done'
#		done
# Using single = instead of comparison operators
#	eg) [ "$count" = 5 ]
#	Fix: Use numeric comparison operators
#		[ "$count" -eq 5 ]
#
# Extra info:
# --------------------
# While loops are really useful for menus (like my cyberpatriot script)
#
# COMMANDS TO DEMONSTRATE:
# --------------------

echo 'Basic while-loop demonstration'
count=1
while [ "$count" -le 5 ]; do
	echo "Count: $count"
	((count++))
done