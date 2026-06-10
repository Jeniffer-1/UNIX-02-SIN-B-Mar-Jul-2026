#!/bin/bash

# This function checks if the current user ID equals zero.
check_if_root(){ #Defines a function named check_if_root.
if [[ "${EUID}" -eq "0" ]]; then #Checks whether the EUID variable is equal to 0.
#EUID It is a special Bash variable that indicates the user privileges under which the current process is running.
 return 0 #The function returns 0, which means success or true.
else #Executes if EUID is not equal to 0.
 return 1 #The function returns 1, which means false or failure.
 fi #Ends the if statement.
}

if check_if_root; then #Calls the check_if_root function. If it returns 0, the condition is true.
 echo "User is root!" #Displays a message indicating that the user is root.
else #Executes if the function returned 1.
 echo "User is not root!" #Displays a message indicating that the user is not root.
fi #Ends the main if block.

#create user
adduser jeniffer #This command creates the user, home directory, and guides you through setting a password and other information.
cat /etc/passwd | grep jeniffer #Displays information about the user.
su - jeniffer #Logs in as the use