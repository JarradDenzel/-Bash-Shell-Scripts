#!/bin/bash

echo -n "How many years have you been working? "

read years

echo -n "How many paydays do you have per year? "

read paydays

echo -n "How many PTO hours have you used? "

read PTOusedHours

hoursPerCheck=0


if (( years < 5 )); then
	echo "You earned this many hours per year:  $((paydays * 9))"
	totHours=$((paydays*9))
	echo "You have $((totHours - PTOusedHours)) hours left over"
elif (( years >= 10 )); then
	echo "You earned this many hours per year: $((paydays * 6))"
	totHours=$((paydays*6))
        echo "You have $((totHours - PTOusedHours)) hours left over"
elif (( years >= 5 )); then
	echo "You earned this many hours per year: $((paydays * 8))"
	totHours=$((paydays*8))
        echo "You have $((totHours - PTOusedHours)) hours left over"
fi
