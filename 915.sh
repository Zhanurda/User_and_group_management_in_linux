#!/bin/bash
read -p "Words"
echo $words | sed 's/.*"\(.*\)"[^"]*$/\1/'

