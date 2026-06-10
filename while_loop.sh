#!/bin/bash 
SIGNAL_TO_STOP_FILE="stoploop" #Creates a variable named SIGNAL_TO_STOP_FILE and assigns it the value "stoploop", which is the name of the file the program will look for.

while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do #While the file stoploop does NOT exist, keep running the loop
 echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exist..." #Displays a message indicating that the file does not exist yet.
 echo "Checking again in 2 seconds..." #Displays a message indicating that it will check again in 2 seconds.
 sleep 2 #Pauses execution for 2 seconds.
done #Ends the while block and checks the condition again.

echo "File was found! Exiting..." #When the stoploop file appears, the loop ends and this message is displayed.
