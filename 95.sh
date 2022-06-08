#!/bin/bash
read -p "Enter E-mail" email
read -p -s  "Enter Password" password
if [[ "$email" =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2.4}$ ]]
then
echo "Valid"
else
echo "Not Valid"
fi
if [[ "$password" =~ ^[A-Z]+[A-Za-z]+[0-9]+[(*|/|+|.|,|#|@|$|%)$] ]]
then
echo "Valid"
else
echo "Not Valid"
fi

