#!/bin/bash

# What are redirects?
# --------------------
# Redirects are used to change where input or output goes
# (I usually just use them to write to files)
#
# Types of redirects:
# --------------------
# Output redirects:
#	Sends command output into a file
#	eg) echo "Hello World" > file.txt
#
# Append redirects:
#	Adds command output to the end of a file
#	eg) echo "New line" >> file.txt
#
# Input redirects:
#	Uses a file as command input
#	eg) wc -l < file.txt
#
# Error redirects:
#	Redirects error messages
#	eg) ls fakefile 2> error.txt
#
# Redirecting stdout and stderr together:
#	Redirects normal output and errors into the same file
#	eg) ls fakefile file.txt > output.txt 2>&1
#
# Redirecting to /dev/null:
#	Discards output completely
#	eg) ls fakefile 2> /dev/null
#
# Here-documents:
#	Allows multiple lines of input directly in the script
#	*(indents in file will be read the same for the input)
#	eg) cat << EOF
#			Hello
#			World
#		EOF
#
# Here-strings:
#	Sends a string as input to a command
#	eg) wc -w <<< "Hello World"
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