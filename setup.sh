#!/bin/bash

# Check if Python 3 is installed
if ! command -v python3 &> /dev/null
then
    echo "Python 3 could not be found. Please install Python 3."
    exit 1
fi

# Create a Python virtual environment
echo "Creating a virtual environment..."
python3 -m venv venv

# Activate the virtual environment
echo "Activating the virtual environment..."
source venv/bin/activate

# Install dependencies if requirements.txt exists
if [ -f "requirements.txt" ]; then
    echo "Installing dependencies from requirements.txt..."
    pip install -r requirements.txt
else
    echo "requirements.txt not found. Skipping dependency installation."
fi

echo "Virtual environment setup complete."
