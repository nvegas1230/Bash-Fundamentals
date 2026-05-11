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