#!/bin/bash

# What are arrays?
# --------------------
# Arrays are a type of data structure that stores more than value in one variable
# In bash, arrays are only one-dimensional, which means you cannot nest arrays
# Arrays can be intitialized with a specific variable type, or you can put multiple different
# variable types into one array
#
# Types of arrays:
# --------------------
# There are two main types of arrays in bash
#	Indexed arrays:
#		you would create an indexed array by assigning it to a variable
#			eg) array_variable=(10 2 5 "hi" 7)
#		or by initializing it and then assigning to it later
#			eg) declare -a array_variable
#		you can add elements to the array by assigning or appending
#			eg) array_variable[6]="hello"
#				array_variable+=("hello")
#		you can remove elements from an array by using 'unset'
#			eg) unset array_variable (clears the array)
#				unset array_variable[1] (clears element at index 1)
#		there are some specific ways that could remove specific elements
#			eg) my_array=("${array_variable[@]/5/}") (removes  elements matching '5', will make them blank)
#		you can get elements from the array by their index or with @
#			eg) echo ${array_variable[0]}
#				output -> 10
#			eg) echo ${array_variable[@]}
#				output -> 10 2 5 "hi" 7
#		you can get the number of elements by using # with all the elements
#			eg) echo ${#array_variable[@]}
#				output -> 5
#	Associative arrays (a.k.a. dictionaries, Bash 4.0+):
#		unlike indexed arrays, you can only make them by declaring them first
#			eg) declare -A array_variable
#		however, you can still assign to them right away at initialization
#			eg) declare -A array_variable=([job]="chef" [pay]=50)
#		you can add elements to the array by assigning or appending
#			eg) array_variable[location]="pizza pizza"
#				array_variable+=([location]="pizza pizza")
#		you can remove elements the same way as indexed arrays, except that the index
#		is replaced by the element name
#			eg) unset array_variable (clears the array)
#				unset array_variable[job] (clears element associated with the key 'job')
#		you can get elements the same way as indexed arrays, except that the index
#		is replaced by the element name
#			eg) echo ${array_variable[job]}
#				output -> chef
#			eg) echo ${array_variable[@]}
#				output -> chef 50
#		you can get the number of elements in these arrays also, along with getting
#		all of the names (or keys) of the elements
#			eg) echo ${!array_varaible[@]}
#				output -> job pay
#			
# When do we use them?
# --------------------
# Whenever you need to store multiple values that are used for similar things, you
# should use arrays
# An example is when you are making a list for usernames or groceries
#
# Common mistakes:
# --------------------
# Arrays start at 0, not 1, which means that you could mistake the index
#	eg) array=(1 2)
#		echo ${array[1]}
#			output -> 2
#	Fix: subtract 1 from the index to get the desired element
# Forgetting to put {} around the value
#	eg) array=(1 2)
#		echo $array[1]
#			output -> 1[1]
#	Fix: bash thinks that $array is equal to ${array[0]}, so you need the curly brackets
#		 to tell it that you are trying to open the array
# Trying to use an array with numbers, but bash thinks they are strings
# Fix: use 'declare -ia array=(1 2 3)'
#	   the -i flag will tell the array that it is only for integers
#	   other flags are:
#		-r (read-only)
#		-l (lowercase)
#		-u (uppercase)
#
# Extra info:
# --------------------
# Array elements are seperated by space, not comma
#
# COMMANDS TO DEMONSTRATE:
# --------------------

echo "Indexed array demonstration: "
read -p "Provide a fruit: " input

declare -a fruit_array=(apple banana grapes)

echo -e "\nShowing one element:"
echo ${fruit_array[0]}

echo -e "\nShowing entire table:"
echo ${fruit_array[@]}

echo -e "\nAdding an element ($input):"
fruit_array+=($input)
echo ${fruit_array[@]}

echo -e "\nRemoving 3rd index:"
unset fruit_array[2]
echo ${fruit_array[@]}

echo -e "\nRemoving element 'banana' from array:"
fruit_array=("${fruit_array[@]/banana/}")
echo ${fruit_array[@]}

echo -e "\nChecking the new length of the array:"
echo ${#fruit_array[@]}

echo -e "\nRemoving blank in array and then re-checking length:"
unset fruit_array[1]
echo ${#fruit_array[@]}