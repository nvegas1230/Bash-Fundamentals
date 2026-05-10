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