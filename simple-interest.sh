
#!/bin/bash

# Script to calculate simple interest
# Formula: Simple Interest = (Principal * Rate * Time) / 100

read -p "Enter Principal amount: " principal
read -p "Enter Rate of interest: " rate
read -p "Enter Time period in years: " time

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
echo "The Simple Interest is: $simple_interest"
