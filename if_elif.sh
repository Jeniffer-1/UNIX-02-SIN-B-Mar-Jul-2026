#!/bin/bash
USER_INPUT="${1}" #Stores the first argument provided by the user in the USER_INPUT variable.
if [[ -z "${USER_INPUT}" ]]; then #Checks whether the USER_INPUT variable is empty. The -z option means "zero length".
 echo "You must provide an argument!" #Displays a message indicating that the user must provide an argument.
 exit 1 #Terminates the program with error code 1.
fi #Ends the first if block.

if [[ -f "${USER_INPUT}" ]]; then #Checks whether the argument corresponds to an existing file. The -f option means "file"
 echo "${USER_INPUT} is a file." #Displays a message indicating that the argument is a file.
elif [[ -d "${USER_INPUT}" ]]; then #If it is not a file, checks whether it is a directory. The -d option means "directory".
 echo "${USER_INPUT} is a directory." #Displays a message indicating that the argument is a directory.
else #Runs when the argument is neither a file nor a directory.
echo "${USER_INPUT} is not a file or a directory." #Displays a message indicating that the argument is neither a file nor a directory.
fi #Ends the second if block.