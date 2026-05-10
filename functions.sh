#!/bin/bash

# What are functions?
# --------------------
# Functions are blocks of code that you can define and then run later
# Functions can also take in some arguments that will change how they function
#
# Types of functions:
# --------------------
# Two main types of functions
#	Builtin (predefined) functions:
#		Functions that bash has built in to the language
#		eg) echo, printf, cd, etc.
#	Custom (user-defined) functions:
#		Functions that you make for yourself/scripts
#		eg)	example_function() {
#				:
#			}
#			OR
#			function example_function {
#				:
#			}
# Different functions have different functional purposes
#	Common functions:
#		These functions are used to shorted/simplify your script by running
#		commonly-used blocks of code
#	Wrapper functions:
#		These functions are used as a protective shell around other blocks of
#		code
#		If a function has a good chance of erroring or failing, or if you
#		want your functions to all have some sort of common output handling,
#		you should use a wrapper function
# 	Recursive functions:
#		These functions are for recursively searching through something
#		or anything of the sort
#		They will call themselves in the function
#	Exported functions:
#		When you use export -f <function>, you can ake a function available
#		to subshells and child processes
#	Nested functions
#		Nested functions are simply functions that only need to be used within
#		a specific block of code (like inside of a big if statement)
#
# When do we use them?
# --------------------
# You would use functions whenever you want to repeat a block of code without
# having to re-type it every time
# You would also use them if you want to make your code more readable#
#
# Common mistakes:
# --------------------
# Forgetting to call the function after defining it
#	eg) example_function() {
#			echo "Hello"
#		}
#	Fix: add the function call underneath example_function
# Forgetting to pass arguments into functions
#	eg) example_function() {
#			echo "Hello $1"
#		}
#		example_function
#	Fix: pass an argument when calling the function eg) example_function "John"
# Using parenthesis when calling a function
#	eg) example_function()
#	Fix: only use parenthesis when defining the function
#
# Extra info:
# --------------------
# Functions can return an exit status using return
#	eg) return 0 (A return value of 0 usually means success)
# Variables inside functions are global unless you use local keyword
# Functions can call other functions
# For arguments, you would use $1, $2, $3, etc., and then call the function
# with the arguements after the function
#	eg) example_function "test"
#       (then call the variable "test" with $1)
# For any number past $9, you need to use curly brackets eg) ${10}
# $# will tell you the amount of arguements given
# $* and $@ will expand all arguements, but "$*" will turn them into one string,
# and "$@" will turn them into seperate strings
#
# COMMANDS TO DEMONSTRATE:
# --------------------

echo 'Basic function demonstration'
basic_function() {
	echo "Hello world!"
}
basic_function

echo -e "\nFunctions with arguements demonstration"
greet_user_function() {
	echo "Hello, $1"
}
read -p "Enter your name: " username
greet_user_function "$username"

math_function() {
	echo "$1 + $2 = $(($1 + $2))"
}
read -p "Enter first number: " num1
read -p "Enter second number: " num2
math_function "$num1" "$num2"
