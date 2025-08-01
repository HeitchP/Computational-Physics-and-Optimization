#!/bin/bash
# Simple program to calculate the sum of two numbers

# Prompt the user for input
echo "Enter the first number: "
read num1
echo "Enter the second number: "
read num2

# Calculate the sum
sum=$((num1 + num2))

# Print the result
echo "The sum of $num1 and $num2 is: $sum"

