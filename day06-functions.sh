#!/bin/bash

# Basic function
greet() {
    echo "Hello, $1!"
}

greet "Mitch"
greet "World"

# Function with multiple arguments
add_numbers() {
    result=$(($1 + $2))
    echo "$1 + $2 = $result"
}

add_numbers 5 3
add_numbers 10 25

# Function used inside a loop
check_status() {
    if [ "$1" = "online" ]; then
        echo "Server is UP"
    else
        echo "Server is DOWN"
    fi
}

echo ""
echo "--- Server Status Check ---"
for status in online offline online; do
    check_status "$status"
done
