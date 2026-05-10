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