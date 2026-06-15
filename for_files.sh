#!/bin/bash

for file in example_file*; do #Starts a for loop. The variable file will take the value of each file whose name starts with example_file.
   if [[ "${file}" == "example_file1" ]]; then #Checks whether the current file is exactly example_file1.
      echo "Skipping the first file" #Prints the message "Skipping the first file" to the terminal.
      continue #Skips the rest of the loop for this iteration and moves to the next file.

   fi #Ends the if statement
    echo "${RANDOM}" > "${file}" #Generates a random number using the special variable RANDOM and writes it to the current file. The > operator overwrites any existing content.
done #Ends the for loop.
