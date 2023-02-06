#!/bin/bash

# check if an argument was passed
if [ $# -eq 0 ]; then
  echo "Error: No argument provided"
  exit 1
fi

# store the argument as a variable
file=$1

# set the default number of lines to 20
lines=64

# check if a second argument was passed
if [ $# -eq 2 ]; then
  lines=$2
fi

# check if the argument is a file
if [ ! -f "$file" ]; then
  echo "Error: First argument is not a file"
  exit 1
fi

# add line numbers to the file
nl -b a $file > $file.numbered

# split the file into groups of the specified number of lines and print each group
split -l $lines $file.numbered -d -a 4 print_
for i in print_*; do
  lp -o cpi=14 -o lpi=7.5 -o page-bottom=72 -o page-left=72 -o page-right=72 -o page-top=72 $i
done

# delete the temporary files
rm print_*
rm $file.numbered

# exit the script with a success status code
exit 0

