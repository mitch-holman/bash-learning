#!/bin/bash

# Command substitution — store command output in a variable
today=$(date)
echo "Today is: $today"

user=$(whoami)
echo "Current user: $user"

# Arithmetic — double parentheses for math
a=10
b=3

sum=$((a + b))
difference=$((a - b))
product=$((a * b))
quotient=$((a / b))

echo "a=$a, b=$b"
echo "Sum:        $sum"
echo "Difference: $difference"
echo "Product:    $product"
echo "Quotient:   $quotient"
