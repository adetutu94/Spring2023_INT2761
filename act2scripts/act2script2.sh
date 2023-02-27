#!/bin/bash

# Prompt user for first and last name
read -p "Enter your first name: " first_name
read -p "Enter your last name: " last_name

# Prompt user for student ID
read -p "Enter your Student ID: " student_id

# Check if student ID is valid
if [[ $student_id -eq 1234 ]]; then
  # If student ID is valid, print welcome message
  echo "Welcome $first_name $last_name, welcome to your virtual machine!"
else
  # If student ID is not valid, print error message
  echo "Error, invalid Student ID: $student_id. Please try again."
fi
