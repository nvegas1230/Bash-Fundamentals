#!/bin/bash

# What are case statements?
# --------------------
# Case statements are conditionals that are an alternative to if-else-elif statements
# Case statements are easier to expand on and are mainly for readability and efficiency
#
# Types of case statements:
# --------------------
# There is really only one type of case statement, but each line can be ended differently
# 	case "$var" in <- var to use for matching goes between 'case' and 'in'
#		1) <- If the var is equal to this number, it will use the command
#		  echo 'var equals 1'
#		  ;;
#		2) <- Ditto
#		  echo 'var equals 2'
#		  ;;
#		*) <- If the var is anything else, the star indicates 'else'
#		  echo 'var equals something else'
#		  ;;
#	esac <- Closing statement
#
# Extra options
#	*) catch-all, use at end for no matches
#	?) use as a wildcard character; a?c) will match 'abc' or 'adc' but not 'axxc' 
#	a|b) '|' acts as an 'or', so you can put multiple options for one outcome
#
#	;; 	- executes matched block and then exits the entire case statement
#	;& 	- executes matched block and then runs the block for the next clause in the case statement
#	;;& - executes matched block and then continues running the rest of the case statement
#
# When do we use them?
# --------------------
# You use case statments whenever you have a simple variable test
# Basically, case statements are just clearer/more compact versions of a long list of if/else/elif statements
# Good example: if you need to check if a variable is 1, 2, 3, 4, 5, etc.
# Bad example: if you need to check if a variable is 1, 2, a, b, 7h, etc.
#
# Common mistakes:
# --------------------
# Forgetting to close the case statement with 'esac'
#	eg) case "$var" in
#			1) echo "one" ;;
#	Fix: add 'esac' at the end to properly close the statement
#
# Missing ';;' which can cause unintended fall-through behavior
#	eg)	case "$var" in
#			1) echo "one"
#			2) echo "two" ;;
#		esac
#	Fix: add ';;' after each block unless fall-through is intended
#
# Not quoting variables (can break on spaces or special characters)
#	eg)	case $var in
#			hello world) echo "match" ;;
#		esac
#	Fix: always quote variables -> case "$var" in
#	
# Using '=' instead of pattern matching (case uses patterns, not comparisons like [ ])
#	eg)	case "$var" = 1 in
#	Fix: remove '=' and use proper syntax -> case "$var" in
#
# Placing the catch-all (*) option anywhere other than last
#	eg)	case "$var" in
#			*) echo "default" ;;
#			1) echo "one" ;;
#		esac
#	Fix: move '*' to the end so specific matches are checked first
#
# Extra info:
# --------------------
# Case statements use pattern matching, not strict equality checks
# They are often faster and cleaner than multiple if/elif checks
# Patterns can include wildcards like *, ?, and character ranges (e.g. [a-z])
# Case statements are commonly used for menus, user input handling, and argument parsing
#
# COMMANDS TO DEMONSTRATE:
# --------------------