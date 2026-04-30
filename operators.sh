#!/bin/bash

# What are operators (specifically in conditionals)?
# --------------------
# Operators are symbols or keywords used in conditionals
# They allow scripts to compare values and combine conditions in more advanced ways
#
# Types of operators:
# --------------------
# Comparison operators (numeric, used for comparing numbers)
#   eq (equal)			eg) [ "$a" -eq "$b" ]
#   ne (not equal)		eg) [ "$a" -ne "$b" ]
#   lt (less than)		eg) [ "$a" -lt "$b" ]
#   le (less/equal)		eg) [ "$a" -le "$b" ]
#   gt (greater than)	eg) [ "$a" -gt "$b" ]
#   ge (greater/equal)	eg) [ "$a" -ge "$b" ]
#
# Comparison operators (string, used for comparing text)
#	==  (equal)					eg) [ "$a" == "$b" ]
#   !=  (not equal)				eg) [ "$a" != "$b" ]
#   -z  (empty string)			eg) [ -z "$a" ]
#   -n  (not empty)				eg) [ -n "$a" ]
#	>	(alphabetical order)	eg) [ "$a" > "$b" ]
#	<	(alphabetical order)	eg) [ "$a" < "$b" ]
#
# Logical operators (Used to combine conditions)
#	&&	(AND): 	both must be true
#	||	(OR): 	at least one must be true
#  	!	(NOT): 	reverses condition
#
# Arithmetic operators (used for calculations, can be used in a conditional)
#	+  addition
#	-  subtraction
#	*  multiplication
#   /  division
#   %  modulus (remainder)
#
# File test operators
#   Used to check file properties
#   -e (exists)
#	-f (regular file)
#   -d (directory)
#   -r (readable)
#   -w (writable)
#   -x (executable)
#
# Pattern matching
#   Used for matching filenames or strings
#   *  matches anything
#   ?  matches one character
#   eg) *.txt matches all .txt files
#
# When do we use them?
# --------------------
# We use operators whenever we have to check a conditional or do math
# Essentially used everywhere in scripts that have any form of execution that relys on a condition
#
# Common mistakes:
# --------------------
# Some operators will be specifically for numbers, and others strings
# It is easy to mistake the use case for each other
#	eg) [ 10 < 2 ] will not work because the '<' sign is for comparing strings (in alphabetical order)
# 	Fix: switch '<' to -lt to tell bash that they should be treated like numbers, not strings
# Pattern matching operators will not work with single brackets
#	eg) [ "$a" == *x ]
#	Fix: switch to double brackets
#
# Extra info:
# --------------------
# Some operators can be combined (like equal (=) and greater than (>) to create equal to or greater than (>=))
# The equal operator for strings (==) can be written with a single equal sign (=), but i dont like this
# AND/OR operators (&&/||) cannot be used in single bracket conditionals, and you must use -a/-o instead
# Single brackets will also not support pattern matching for checks
#
# COMMANDS TO DEMONSTRATE:
# --------------------

# A ton of conditionals to demonstrate the numeric operators (-eq, -lt, etc.)
# Putting in characters other than numbers will error
read -p "Enter first number: " var1
read -p "Enter second number: " var2

if [ "$var1" -eq "$var2" ]; then
    echo "Equal"
fi

if [ "$var1" -ne "$var2" ]; then
    echo "Not equal"
fi

if [ "$var1" -lt "$var2" ]; then
    echo "$var1 is less than $var2"
fi

if [ "$var1" -le "$var2" ]; then
    echo "$var1 is less than or equal to $var2"
fi

if [ "$var1" -gt "$var2" ]; then
    echo "$var1 is greater than $var2"
fi

if [ "$var1" -ge "$var2" ]; then
    echo "$var1 is greater than or equal to $var2"
fi