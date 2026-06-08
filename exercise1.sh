#!/bin/bash

# Store the arguments in variables
first_name=$1
last_name=$2

# Create output.txt and write the date
date +"%d-%m-%Y" > output.txt

# Write the full name
echo "$first_name $last_name" >> output.txt

# Create a backup
cp output.txt backup.txt

# Display the contents of output.txt
cat output.txt