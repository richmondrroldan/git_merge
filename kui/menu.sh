#!/usr/bin/bash

function menu(){
  read opt
  case $opt in
    1)
      mes=$(df -h)
      y=0
      ;;
    2)
      mes=$(uptime)
      y=0
      ;;
    3)
      mes=$(w) #who
      y=0
      ;;
    "q")
      y=2
      ;;
    *)
      y=1
      ;;
  esac
  status=$(printf "\n$y")
  echo "$mes$status"
}

function main(){
  status=0
  while [[ "$status" -lt 2 ]]; do
    mes='
---
Welcome! What would you like to do? (Enter q to quit)
  1. Show disk usage.
  2. Show system uptime.
  3. Show the users logged into the system.

Enter option: '
    printf "$mes"

    # Display
    disp=$(menu)
    status=$(echo "$disp" | tail -n 1)
    echo "$disp" | head -n -1

    # Exit
    if [[ "$status" == 1 ]]; then
      echo "Please select a valid option."
    fi
  done
  printf "\nGoodbye!\n"
}

main
