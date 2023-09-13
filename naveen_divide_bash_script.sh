#!/bin/bash

# Prompt the user for the numerator
read -p "Enter the numerator: " numerator

# Prompt the user for the denominator
read -p "Enter the denominator: " denominator

# Check if the denominator is zero
if [ $denominator -eq 0 ]; then
  echo "Error: Division by zero is not allowed."
  exit 1
fi

# Perform the division
result=$(echo "scale=2; $numerator / $denominator" | bc)

# Display the result
echo "The result of $numerator / $denominator is: $result"
