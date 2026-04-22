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
# 	Missing spaces: [ "$a"="$b" ] (wrong)
# 	Using [ ] instead of [[ ]] for patterns
# 	Forgetting semicolons inside {}
# 	Confusing subshell () with grouping {}
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
if [ 5 -gt 3 ]; then
	echo "true" # OUTPUT -> true
fi

# [[]] (advanced condition)
if [[ hello == hello ]]; then
	echo "words match" # OUTPUT -> words match
fi