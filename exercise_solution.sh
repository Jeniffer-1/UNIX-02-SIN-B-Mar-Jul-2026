#!/bin/bash

NAME="${1}" # Store the first argument (site name) in the variable NAME


DOMAIN="${2}" # Store the second argument (domain name) in the variable DOMAIN

OUTPUT_FILE="results.csv" # Define the output CSV file name


# Check if both required arguments were provided
if [[ -z "${NAME}" ]] || [[ -z "${DOMAIN}" ]]; then
  echo "You must provide two arguments to this script."
  echo "Example: ${0} mysite nostarch.com"
  exit 1
fi

echo "status,name,domain,timestamp" > "${OUTPUT_FILE}" # Create the CSV file and write the header row


if ping -c 1 "${DOMAIN}" &> /dev/null; then # Test whether the domain is reachable using ping

  echo "success,${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}" # If the ping succeeds, record a success entry

else

  echo "failure,${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}" # If the ping fails, record a failure entry

fi