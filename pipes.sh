#!/bin/bash

# What are pipes?
# --------------------
# Pipes are used to take the output from one command and input it into another command
#
# Types of pipes:
# --------------------
# Pipes are pretty simple, and the complexity of pipes are actually just the combinations you can make
# A basic example is grep, where it will take the input and sort it with grep
#	eg) ls | grep example_directory
#		(instead of displaying all parts of the directory, it will filter out anything except for 'example_directory')
#
# When do we use them?
# --------------------
# We use pipes whenever we want one command to use the output of another command
# They are useful for filtering, searching, sorting, counting, formatting, etc.
#
# Common mistakes:
# --------------------
# Forgetting spaces around the pipe symbol
#	eg) echo "Hello"|wc
#	Fix: Add spaces around the pipe
#		echo "Hello" | wc
# Using pipes when output redirection is needed
#	eg) echo "Hello" | file.txt
#	Fix: Use output redirection instead
#		echo "Hello" > file.txt
# Using commands that do not read standard input
#	eg) cd test | wc
#	Fix: Use commands that accept piped input
#		echo "test" | wc
#
# Extra info:
# --------------------
# The pipe operator is '|'
# Pipes send standard output (stdout) into standard input (stdin)
# Pipes can chain many commands together
# Commands connected with pipes run at the same time
#
# COMMANDS TO DEMONSTRATE:
# --------------------