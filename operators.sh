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

echo 'Numeric operators demonstration (-eq, -lt, etc.)'
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

echo
echo 'String operators demonstration'
read -p "Enter first string: " str1
read -p "Enter second string: " str2

if [ "$str1" == "$str2" ]; then
    echo "Strings are equal"
fi

if [ "$str1" != "$str2" ]; then
    echo "Strings are not equal"
fi

if [ -z "$str1" ]; then
    echo "First string is empty"
fi

if [ -n "$str1" ]; then
    echo "First string is NOT empty"
fi

if [[ "$str1" > "$str2" ]]; then
    echo "$str1 comes after $str2 alphabetically"
fi

if [[ "$str1" < "$str2" ]]; then
    echo "$str1 comes before $str2 alphabetically"
fi

echo
echo 'Logical operators demonstration (&&, ||, !)'
read -p "Enter a number greater than 10: " num

if [[ "$num" -gt 10 && "$num" -lt 20 ]]; then
    echo "$num is between 10 and 20"
fi

if [[ "$num" -lt 5 || "$num" -gt 15 ]]; then
    echo "$num is either less than 5 OR greater than 15"
fi

if [[ ! "$num" -eq 10 ]]; then
    echo "$num is NOT equal to 10"
fi

echo
echo 'Arithmetic operators demonstration'
read -p "Enter first number for arithmetic: " a
read -p "Enter second number for arithmetic: " b

echo "Addition: $((a + b))"
echo "Subtraction: $((a - b))"
echo "Multiplication: $((a * b))"

if [ "$b" -ne 0 ]; then
    echo "Division (integer): $((a / b))"
    echo "Division (using bc): $(echo "$a/$b" | bc -l)"
    echo "Modulus: $((a % b))"
else
    echo "Cannot divide by zero"
fi

echo
echo 'File test operators demonstration'
read -p "Enter a file or directory path (/ is root): " path

if [ -e "$path" ]; then
    echo "Path exists"
else
    echo "Path does not exist"
fi

if [ -f "$path" ]; then
    echo "It is a regular file"
else
    echo "File does not exist"
fi

if [ -d "$path" ]; then
    echo "It is a directory"
fi

if [ -r "$path" ]; then
    echo "It is readable"
fi

if [ -w "$path" ]; then
    echo "It is writable"
fi

if [ -x "$path" ]; then
    echo "It is executable"
fi

echo
echo 'Pattern matching demonstration'
read -p "Enter a filename: " filename

if [[ "$filename" == *.txt ]]; then
    echo "This is a .txt file"
fi

if [[ "$filename" == *.sh ]]; then
    echo "This is a shell script"
fi

if [[ "$filename" == file? ]]; then
    echo "Matches pattern 'file?' (file + one character)"
fi

if [[ "$filename" == *log* ]]; then
    echo "Filename contains 'log'"
fi

echo
echo 'AND (&&) / OR (||) outside brackets demonstration'

read -p "Enter a number greater than 5: " num
[ "$num" -gt 5 ] && echo "Number is greater than 5" # Command runs only if the first succeeds
[ "$num" -gt 5 ] || echo "Number is NOT greater than 5" # Command runs only if the first fails