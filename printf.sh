#!/bin/bash

# What is printf()?
# --------------------
# printf is a built-in Bash command used to format and print output
# It is basically echo but with more control over how text is displayed on the terminal
#
# When do we use it?
# --------------------
# printf is used when you want specific formatting for your output
# Examples include:
#	Aligning text
#	Controlling decimal places for numbers
#	Printing variables in a specific format
# Basic usage:
#	eg) printf "Hello"
#		OUTPUT -> Hello
#
# Formatting options:
# --------------------
# The format string contains placeholders that affet how values are printed
# Common format specifiers:
#	%s -> string
#	%d -> integer
#   %f -> floating-point number
#   %x -> hexadecimal
#   \n -> newline
#   \t -> tab
#
# 	eg)	printf "Hello %s\n" "World"
#   	OUTPUT -> Hello World
#
# Formatting options:
# --------------------
# You can control width, alignment, and precision:
#   %10s  -> right-align string in 10 spaces
#   %-10s -> left-align string in 10 spaces
#   %.2f  -> float with 2 decimal places
#
# 	eg)	printf "%-10s %5d\n" "Age:" 25
#   	OUTPUT -> Age:         25
#
# Common mistakes:
# --------------------
# Forgetting to include a newline
#   eg)	printf "Hello"
# Fix: add \n
#   eg) printf "Hello\n"
#
# Mismatching format specifiers and arguments
#   eg) printf "%d\n" "hello"
#   	OUTPUT -> error or unexpected result
# Fix: match the correct type
#   eg) printf "%s\n" "hello"
#		OUTPUT -> "hello"
#				  *newline*
#
# Not providing enough arguments
#   printf "%s %s\n" "Hello"
#   OUTPUT -> Hello *missing value may print blank or garbage*
#
# Extra info:
# --------------------
# printf does not automatically add a newline, unlike echo
#	eg) echo "Hello"
#		OUTPUT ->	Hello
#					*empty space/newline*	
#	eg) printf "Hello"
#		OUTPUT ->	Hello
# COMMANDS TO DEMONSTRATE:
# --------------------
# Basic string printing
printf "Hello, %s!\n" "John"   # OUTPUT -> Hello, John!

# Printing multiple values
name="Alice"
age=30
printf "Name: %s | Age: %d\n" "$name" "$age"
# OUTPUT -> Name: Alice | Age: 30

# Formatting numbers
pi=3.14159
printf "Pi rounded to 2 decimals: %.2f\n" "$pi"
# OUTPUT -> Pi rounded to 2 decimals: 3.14

# Aligning text
printf "%-10s %5s\n" "Item" "Price"
printf "%-10s %5.2f\n" "Apple" 1.5
# OUTPUT ->
# Item       Price
# Apple       1.50

# Using escape characters
printf "Line1\nLine2\n"
# OUTPUT ->
# Line1
# Line2