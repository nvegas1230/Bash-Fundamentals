#!/bin/bash

# What is user input?
# --------------------
# User input is any data provided by a user while a script is running.
# In Bash, this is commonly done using the 'read' command, which allows
# the script to pause and wait for the user to type something.
#
# Types of user input:
# --------------------
# 1) Basic input
#    Stores input into a variable
#    eg) read name
#
# 2) Prompted input (-p)
#    Displays a message before accepting input
#    eg) read -p "Enter your name: " name
#
# 3) Silent input (-s)
#    Hides input (useful for passwords)
#    eg) read -s password
#
# 4) Timed input (-t)
#    Waits a certain number of seconds before timing out
#    eg) read -t 5 input
#
# 5) Limited input (-n)
#    Reads only a specific number of characters
#    eg) read -n 1 choice
#
# When do we use it?
# --------------------
# User input is used whenever you want interaction in your script.
# This includes:
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