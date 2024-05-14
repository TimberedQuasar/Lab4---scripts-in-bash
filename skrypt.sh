#!/bin/bash

#show date --date
#today=$(date +"%d-%m-%Y")
#date -d "Today's date: $today"

#create 100 files named "logx.txt"--logs
for file_number in {1..100}; do
  file_name="log${file_number}.txt"
  echo "$file_name created by $(basename "$0")" > "$file_name"
done