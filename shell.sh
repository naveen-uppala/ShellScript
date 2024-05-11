#!/bin/bash

# Input data
input_data="pandas 1.0.4 pypi
numpy 1.9.5 pypi
cherry red 
naveen 1.2.4 eubv komal 12.2.3"

# Loop through each line of input
echo "$input_data" | while read -r a; do
    # Use grep to extract string followed by space and decimal number
    match=$(echo "$a" | grep -oE '[a-zA-Z]+ [0-9]+\.[0-9]+\.[0-9]')
 
    # Check if a match is found
    if [ -n "$match" ]; then
        # Replace space with "=" character
        formatted=$(echo "$match" | sed 's/ /=/')
        echo "$formatted"
    fi
done
