#!/usr/bin/bash


add_two_numbers() {

  echo "First number: $1"
  echo "Second number: $2"

 # Check if both arguments are integers
  if [[ ! $1 =~ ^-?[0-9]+$ ]] || [[ ! $2 =~ ^-?[0-9]+$ ]]; then
    echo "Error: Both arguments must be integers."
    return 1
  fi


  let ret_val=$1+$2
  echo "Sum: $ret_val"
}

add_two_numbers $1 $2

