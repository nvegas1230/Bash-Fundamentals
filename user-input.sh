#!/bin/bash

# What is user input?
# --------------------
# User input is any data provided by a user while a script is running
# In Bash, this is commonly done using the 'read' command, which allows
# the script to pause and wait for the user to type something
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
# User input is used whenever you want interaction in your script
# This includes:
# 	Asking users for names, numbers, or choices
# 	Menu systems
# 	Password prompts
# 	Configuring scripts dynamically
#
# Common mistakes:
# --------------------
# Not quoting variables
#   eg) if [ $input = yes ]
#   Fix: if [ "$input" = "yes" ]
# Forgetting variable name
#   eg) read
#   Fix: read input
# Using numeric comparison on strings
#   eg) [ "$input" -eq "hello" ]
#   Fix: use = for strings → [ "$input" = "hello" ]
# Overwriting variables unintentionally
#   eg) read input (used multiple times without meaning to)
#	Fix: ensure that input is not used again as a variable name if not immediately checked
# Not handling empty input
#   eg) user presses enter without typing anything
#	Fix: add an else statement or check if the input is invalid
#
# Extra info:
# --------------------
# If no variable is provided, input is stored in the default variable $REPLY
# eg) read
#     echo "$REPLY"
# You can read multiple values at once:
# eg) read first last
#     (user types: John Doe → first=John, last=Doe)
#
# COMMANDS TO DEMONSTRATE:
# --------------------

# Basic user input
read -p "Enter your name: " name
echo "Hello, $name!"

# Silent input (password)
read -s -p "Enter your password: " password
echo
echo "Password received (hidden for security)"

# Multiple inputs *will only split up the first part, any other spaces will be added to last variable
read -p "Enter your first and last name: " first last
echo "First: $first, Last: $last"

# Conditional use with input
read -p "Do you play / have you heard of brawl stars? (yes/no): " answer
if [ "$answer" = "yes" ]; then
    echo 'Nice'
elif [ "$answer" = "no" ]; then
    echo 'You should try it!'
else
    echo "You didnt give me a valid answer (aw man)"
fi