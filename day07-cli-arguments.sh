#!/bin/bash

# $0 - script name
echo "Script name: $0"

# $1, $2 - individual arguments
echo "First argument: $1"
echo "Second argument: $2"

# $# - number of arguments
echo "Number of arguments: $#"

# $@ - all arguments
echo "All arguments: $@"

# Looping over all arguments
echo ""
echo "--- Looping over arguments ---"
for arg in $@; do
    echo "  Arg: $arg"
done

# Practical example — greet each person passed in
echo ""
echo "--- Greetings ---"
greet() {
    echo "Hello, $1!"
}

for name in $@; do
    greet "$name"
done
