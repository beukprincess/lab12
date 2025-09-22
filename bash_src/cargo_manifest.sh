#!/bin/bash

# Define arrays for each cargo bay's inventory
forward_bay=("Space Suits" "Oxygen Tanks" "Repair Kits")
midship_bay=("Food Supplies" "Water Containers" "Medical Equipment")
aft_bay=("Spare Parts" "Fuel Cells" "Scientific Instruments")

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Please specify a cargo bay: forward, midship, or aft"
    exit 1
fi


# Display inventory based on the argument
if [ "$1" = "forward" ]; then
    count=1
    for i in "${forward_bay[@]}";do
        echo "$count. $i"
        ((++count))
    done
elif [ "$1" = "midship" ]; then
    count=1
    for i in "${midship_bay[@]}";do
        echo "$count. $i"
        ((++count))
    done
elif [ "$1" = "aft" ]; then
    count=1
    for i in "${aft_bay[@]}";do
        echo "$count. $i"
        ((++count))
    done
else
    echo "Invalid cargo bay. Choose forward, midship, or aft."
    exit 1
fi
