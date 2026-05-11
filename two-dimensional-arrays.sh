#!/bin/bash

# What are two dimensional arrays?
# --------------------
# Two dimensional arrays store data in rows and columns
# Two dimensional arrays also may have one array in another array
# Bash does not directly support actual 2D arrays, but we can fake them
# with certain methods (like associative arrays)
#
# Types of two dimensional arrays:
# --------------------
# Associative arrays:
#	Uses keys that look like 2 points but are actually just one string
#	eg) declare -A table
#		table[1,2]="B"
#
# Turning arrays into strings:
#	Use a string with values seperated by spaces that can then be turned into
#	its own array if you iterate through the values
#	eg) declare -A table
#		string="apple orange banana grape"
#		table[fruits] = "$string"
#		IFS=" " read -ra fruits <<< "${table[fruits]}"
#		for fruit in "${fruits[@]}"; do
# 			echo "Processing: $fruit"
#		done
#
# When do we use them?
# --------------------
# We use two dimensional arrays when working with things like
# coordinates, grouping things, and anything that would need to be put
# into one array
#
# Common mistakes:
# --------------------
# Forgetting to declare associative arrays
#	eg) table[0,0]="A"
#	Fix: Use declare -A first
#		declare -A table
# Mixing up row and column indexes
#	eg) table[1,0] instead of table[0,1]
#	Fix: Keep row,column order consistent
# Forgetting quotes around values with spaces
#	eg) table[0,0]=Hello World
#	Fix: Wrap strings in quotes
#		table[0,0]="Hello World"
# Trying to use normal array syntax for 2D arrays
#	eg) grid[0][1]="A"
#	Fix: Use combined indexes
#		grid[0,1]="A"
#
# Extra info:
# --------------------
# 
#
# COMMANDS TO DEMONSTRATE:
# --------------------