#!/bin/bash/
echo "Write file name" 
read file
sudo cp /home/zhanelya/$file /home/zhanelya/$file.$(date + "%d-%m-%Y").bak
