#!/bin/bash

# What are brackets?
# --------------------
# Brackets in Bash are special symbols used for tests, grouping, expansion,
# pattern matching, arithmetic, and command substitution
# Different types of brackets have different meanings
#
# Types of brackets:
# --------------------
# ()    -> Subshell (runs commands in a separate environment)
# {}    -> Group commands (same shell)
# []    -> Basic test/condition (POSIX)
# [[]]  -> Advanced test (Bash, supports patterns/regex)
# (())  -> Arithmetic evaluation
# $()   -> Command substitution (capture output)
# ${}   -> Variable expansion/manipulation
#
# When do we use them?
# --------------------
# We use brackets when we want to:
#	Test conditions (if statements, comparisons)
#	Grouping commands
#	Performing arithmetic (math)
#	Capturing command output (to assign to variables)
#	Manipulating variables (mainly arrays)
#
# Common mistakes:
# --------------------
# 	Using single equals for comparing: [ "$a" == "$b" ]
#		Fix: use double equal signs eg) [ "$a" == "$b" ]
# 	Using [ ] for complex patterns: [ hello == *o ]
#		Fix: switch to double brackets eg) [[ hello == *o ]]
# 	Confusing subshell () with grouping {}: var=${command}
#		Fix:
# 	Not using quotes around variables
#	Trying to use () instead of $() to get output from subshell
#
# Extra info:
# --------------------
# Using [[]] for conditionals is usually safer and has more options
#
# COMMANDS TO DEMONSTRATE:
# --------------------
#
# Using [] to test a condition
echo 'Using [] for condition checking:'

var_b='5 '

if [ $var_b -gt 3 ]; then
	echo "true" # OUTPUT -> true
fi

# Using [[]] to test a more advanced condition (like pattern matching)
echo 'Using [[]] for advanced condition checking (like pattern matching):'
if [[ hello == *o ]]; then
	echo "word has an 'o' in it" # OUTPUT -> word has an 'o' in it
fi

new_var="hello"

if [ "$new_var" == *"o" ]; then
	echo "word has an 'o' in it" # OUTPUT -> word has an 'o' in it
fi

# Double brackets do expansion also

# Using () to make a subshell
# If you run this command not in a subshell, it will change your directory
# Because it is run in a subshell, the cd will not change directory
echo 'Using () to make a :'
(cd /; pwd) # OUTPUT -> /