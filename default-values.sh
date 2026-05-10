#!/bin/bash

# What are default values?
# --------------------
# Default values are fallback values that are used when a variable is empty or unset
#
# Types of default values:
# --------------------
# Simple default values:
#	Uses a fallback value if a variable is empty or unset
#	eg) ${username:-Guest}
#
# Assigning default values:
#	Assigns a fallback value directly to the variable if it is empty or unset
#	eg) username=${username:=Guest} OR : ${username:=Guest}
#
# Alternate values:
#	Uses another value only if the variable exists and is not empty
#	eg) result=${username:+User exists}
#
# Error-message defaults:
#	Stops the script and displays an error if the variable is empty or unset
#	eg) ${variable:?'Variable is missing'}
#
# When do we use them?
# --------------------
# Default values are used for extra security in scripts incase a variable isnt filled
# You would use one if you are sure that the variable has a chance to not be assigned to
#
# Common mistakes:
# --------------------
# Forgetting braces around variables
#	eg) $username:-Guest
#	Fix: Wrap the variable in braces
#		${username:-Guest}
# Confusing - with =
#	eg) : ${username:-Guest}
#	Fix: Use = if you want the variable itself to change
#		: ${username:=Guest}
#
# Extra info:
# --------------------
# 
#
# COMMANDS TO DEMONSTRATE:
# --------------------