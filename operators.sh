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
#	=   (equal)			eg) [ "$a" = "$b" ]
#   !=  (not equal)		eg) [ "$a" != "$b" ]
#   -z  (empty string)	eg) [ -z "$a" ]
#   -n  (not empty)		eg) [ -n "$a" ]
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