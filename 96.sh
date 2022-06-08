#!/bin/bash
read -p "Enter words" words
if [[ $words =~ ^[A-Za-z]+[a-z]+@[A-Za-z] ]]
then
echo "@ is find"
else 
echo "not find"
fi

