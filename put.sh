#!/bin/bash

# Prompt the user to input values for each variable
read -p "Enter patient ID: " id
read -p "Enter firstname: " firstname
read -p "Enter lastname: " lastname
read -p "Enter birthdate: " birthdate
read -p "Is the patient a smoker? (true/false): " smoker
read -p "Enter gender: " gender

# Make the PUT request
response=$(curl -X PUT \
  -H "Content-Type: application/json" \
  -d "{\"firstname\":\"$firstname\",\"lastname\":\"$lastname\",\"birthdate\":\"$birthdate\",\"smoker\":$smoker,\"gender\":\"$gender\"}" \
  http://localhost:3000/patients/$id)

# Print the response
echo "Response:"
echo "$response"