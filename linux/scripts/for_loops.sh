#!/bin/bash

# create a variable that holds a list of your top 5 favorite U.S. states

# variable list
states=(
    "Texas"
    "Hawaii"
    "Virginia"
    "Alabama"
    "Florida"
)

# create for loop

# print out states
for state in ${states[@]}
do
    if [ $state = "Hawaii" ]
    then
        echo "Hawaii is the best!"
    else
        echo "I'm not fond of Hawaii"
    fi
done

