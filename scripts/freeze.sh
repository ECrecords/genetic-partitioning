#!/bin/bash

# Get the output of pip freeze
pip_output=$(pip freeze)

# Replace '==' with '>='
updated_output=$(echo "$pip_output" | sed 's/==/>=/g')

# Print the updated output
echo "$updated_output" > requirements.txt
