#!/bin/bash

# What are quotations?
# --------------------
# Quotes are a tool used to tell the computer that the lines are not literal commands, and are instead just characters
#
# When do we use them?
# --------------------
# We use quotes when we want to either make something readable to humans, or when we want to put a line of code into another command
# but not use it yet.
#
# Types of quotations:
# --------------------
# There are only really two types of quotations:
#	1) Single quotes
#	2) Double quotes
# Single quotes are used for LITERAL strings
#	eg)	'This is a string'
#		OUTPUT -> This is a string
# Double quotes are used for VARIABLE EXPANSION and strings
#	eg)	"Your name is: $variable"
#		OUTPUT -> Your name is john 
#
# Common mistakes:
# --------------------
# Misunderstanding when to use single and double quotes
#	eg)	'Your name is: $variable'
#		OUTPUT -> Your name is $variable
# Fix: make sure you use double quotes when you want to access a variable's value
#
# Extra info:
# --------------------
# Because of overuse and unnecessary use of double quotes, people can break and abuse systems using command injection
# Read command seems to return it in single quotes so it is realatively safe this way (from my understanding)

# COMMANDS TO DEMONSTRATE:
# --------------------

single_quote_string='This is a single quote string'
double_quote_string="This is a double quote string"

# You can put a string in either double or single quotes, both will provide the same result if it is just characters