#!/bin/bash
read -p "Enter word" word
if [[ $word =~ ^[A-Za-z]+[0-9]+[_] ]]
then
echo "ok"
else
echo "no"
fi
