#!/bin/bash

# String comparison
name="Mitch"

if [ "$name" = "Mitch" ]; then
    echo "Hey, I know you!"
else
    echo "Who are you?"
fi

# Number comparison
score=75

if [ "$score" -ge 90 ]; then
    echo "Grade: A"
elif [ "$score" -ge 80 ]; then
    echo "Grade: B"
elif [ "$score" -ge 70 ]; then
    echo "Grade: C"
else
    echo "Grade: F"
fi

# Using command substitution in a condition
current_user=$(whoami)

if [ "$current_user" = "root" ]; then
    echo "Warning: running as root"
else
    echo "Running as: $current_user"
fi
