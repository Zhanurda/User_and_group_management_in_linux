#!/bin/bash
read -p "url" url
echo $url | sed -e "s/[^/]*\/\/\([^@]*@\)\?\([^:/]*\).*/\2/"

