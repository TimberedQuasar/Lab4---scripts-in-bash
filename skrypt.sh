#!/bin/bash

while [[ $# -gt 0 ]]
do
  key="$1"

  case $key in
    --date)
    #show date --date
    today=$(date +"%d-%m-%Y")
    echo "Today's date: $today"
    shift
    ;;
    --logs)
    #--logs wil create 100 files named "logx.txt" where x=number
    if [[ $2 =~ ^[0-9]+$ ]]; then
      # argument is a number
      num_files=$2
      for file_number in $(seq 1 $num_files); do
        file_name="log${file_number}.txt"
        echo "$file_name created by $(basename "$0")" > "$file_name"
      done
      shift
    else
      # argument is not a number
      echo "Creating 100 log files..."
      for file_number in {1..100}; do
        file_name="log${file_number}.txt"
        echo "$file_name created by $(basename "$0")" > "$file_name"
      done
    fi
    shift
    ;;
    --help)
    #--help for showing available options
    echo "Available options:"
    echo "--date will show you today's date"
    echo "--logs wil create a specified number of files named "logx.txt" where x is a number from 1 to the specified number"
    echo "--logs with no argument will create 100 files"
    echo "--help for showing this message"
    shift # past argument
    ;;
    *)    # unknown option
    echo "Unknown option: $1"
    echo "Available options:"
    echo "--date will show you today's date"
    echo "--logs wil create a specified number of files named "logx.txt" where x is a number from 1 to the specified number"
    echo "--logs with no argument will create 100 files"
    echo "--help for showing this message"
    exit 1
    ;;
  esac
done