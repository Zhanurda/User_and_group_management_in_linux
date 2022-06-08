#!/bin/bash
read "Enter page" page
sed -e 's/<[^>]*>//g' $page

