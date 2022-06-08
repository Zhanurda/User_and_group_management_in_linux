#!/bin/bash
read -p "Word" word
read -p "File" file
grep $word /home/zhanelya/$file
