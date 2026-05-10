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
# We use redirects whenever we want to control where command input or output goes
#
# Common mistakes:
# --------------------
# Accidentally overwriting files with >
#	eg) echo "New data" > important.txt
#	Fix: Use >> if you want to add instead of overwrite
#		echo "New data" >> important.txt
# Forgetting spaces around redirects
#	eg) echo "Hello">file.txt
#	Fix: Add spaces for readability
#		echo "Hello" > file.txt
# Confusing > with >>
#	eg) echo "Line 2" > file.txt
#	Fix: Use >> to append instead of replacing contents
#		echo "Line 2" >> file.txt
# Redirecting only stdout but not stderr
#	eg) ls fakefile > output.txt
#	Fix: Redirect stderr separately if needed
#		ls fakefile > output.txt 2> error.txt
# Forgetting quotes around text with spaces
#	eg) echo Hello World > file.txt
#	Fix: Wrap strings in quotes
#		echo "Hello World" > file.txt
#
# Extra info:
# --------------------
# Standard output (stdout) uses file descriptor 1
# Standard error (stderr) uses file descriptor 2
# Standard input (stdin) uses file descriptor 0	
# /dev/null is a special file that discards all data written to it
#
# COMMANDS TO DEMONSTRATE:
# --------------------

echo 'Output redirect demonstration'
touch example.txt
echo "Hello World" > example.txt
cat example.txt

echo -e '\nAppend redirect demonstration'
echo "First line" > example.txt
echo "Second line" >> example.txt
cat example.txt

echo -e '\nRedirect to /dev/null demonstration'
cat example.txt > /dev/null

echo -e '\nHere-document demonstration'
cat << END
This is line 1
This is line 2
This is line 3
END