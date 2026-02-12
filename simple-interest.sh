#!/bin/bash
# simple-interest.sh
# A Bash script to calculate simple interest based on user input.

# Prompt for principal amount
echo "Enter the principal amount:"
read principal

# Prompt for rate of interest (as percentage, e.g., 5 for 5%)
echo "Enter the rate of interest (in %):"
read rate

# Prompt for time period (in years)
echo "Enter the time period (in years):"
read time

# Calculate simple interest using bc for floating-point math
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display the result
echo "Simple Interest: $interest"
