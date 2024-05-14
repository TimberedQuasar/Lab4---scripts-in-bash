#!/bin/bash

#show date --date
#today=$(date +"%d-%m-%Y")
#date -d "Today's date: $today"

#create 100 files named "logx.txt"--logs
#for file_number in {1..100}; do
#  file_name="log${file_number}.txt"
#  echo "$file_name created by $(basename "$0")" > "$file_name"
#done

#--help
echo "--date will show you today's date"
echo "--logs wil create 100 files named "logx.txt" where x=number"
echo "--logs with argument like:30 will create 30 files"
echo "--help for showing available options"
