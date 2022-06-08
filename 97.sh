#!/bin/bash
read  -p "Enter words" words
if [[ $words =~ ^[A-Z]+[a-z] ]]
then
echo "Start from Upper case"
else
echo "Start from lower case"
fi
