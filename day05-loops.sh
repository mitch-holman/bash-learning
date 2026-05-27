#!/bin/bash

# for loop — iterating over a list
echo "--- For Loop ---"
for fruit in apple banana cherry; do
    echo "Fruit: $fruit"
done

# for loop — iterating over a range of numbers
echo ""
echo "--- Counting with For ---"
for number in 1 2 3 4 5; do
    echo "Number: $number"
done

# while loop — repeat until condition is false
echo ""
echo "--- While Loop ---"
count=1
while [ "$count" -le 5 ]; do
    echo "Count: $count"
    count=$((count + 1))
done

echo ""
echo "Done!"
