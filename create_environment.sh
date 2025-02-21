#!/bin/bash

# Function to validate user input (no spaces or special characters)
validate_input() {
    if [[ $1 =~ ^[a-zA-Z0-9_]+$ ]]; then
        return 0
    else
        return 1
    fi
}

# Get user name and validate
while true; do
    echo "Please enter your name (alphanumeric characters and underscores only):"
    read name
    if validate_input "$name"; then
        break
    else
        echo "Error: Name can only contain letters, numbers, and underscores"
    fi
done

# Define the main directory name
main_dir="submission_reminder_${name}"

# Create main directory
echo "Creating main directory: $main_dir"
mkdir -p "$main_dir"

# Create subdirectories
echo "Creating subdirectories..."
mkdir -p "$main_dir/app"
mkdir -p "$main_dir/config"
mkdir -p "$main_dir/modules"
mkdir -p "$main_dir/assets"

# Copy or create necessary files
# Note: Assuming the provided files are in the current directory

# Copy the startup.sh scrip to the main directory
if [ -f "startup.sh" ]; then
    cp startup.sh "$main_dir/"
    chmod +x "$main_dir/startup.sh"
    echo "Copied startup.sh to main directory and made it executable"
else
    echo "Warning: startup.sh not found in current directory"
fi

# Copy config.env to config directory
if [ -f "config.env" ]; then
    cp config.env "$main_dir/config/"
    echo "Copied config.env to config directory"
else
    echo "Warning: config.env not found in current directory"
fi

# Copy reminder.sh to app directory
if [ -f "reminder.sh" ]; then
    cp reminder.sh "$main_dir/app/"
    chmod +x "$main_dir/app/reminder.sh"
    echo "Copied reminder.sh to app directory and made it executable"
else
    echo "Warning: reminder.sh not found in current directory"
fi

# Copy functions.sh to module directory
if [ -f "functions.sh" ]; then
    cp functions.sh "$main_dir/modules/"
    chmod +x "$main_dir/modules/functions.sh"
    echo "Copied functions.sh to modules directory and made it executable"
else
    echo "Warning: functions.sh not found in current directory"
fi

# Copy submissions.txt to assets directory
if [ -f "submissions.txt" ]; then
    cp submissions.txt "$main_dir/assets/"
    echo "Copied submissions.txt to assets directory"
else
    echo "Warning: submissions.txt not found in current directory"
fi

echo "ENVIRONMENT SETUP COMPLETE!"