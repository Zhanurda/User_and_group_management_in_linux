#!/bin/bash
ipp="file1.txt"
for ip in $(cat $ipp)
do
    ping $ip -c 1 -t 1 &> /dev/null
    if [ $? -ne 0 ]; then
        echo $ip ping failed >> $ip.txt;
        else
        echo $ip ping passed >> $ip.txt;
    fi
done


