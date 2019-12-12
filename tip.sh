#!/bin/bash

echo -n "How much is your tab? "

read tab

echo -n "What percentage do you want to tip? "

read tip

totTip=tab*tip/100

echo -n "Your total tip is: $((totTip))"


