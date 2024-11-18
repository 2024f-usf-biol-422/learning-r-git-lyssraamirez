#!/bin/bash

# Make good use of defensive programming and echo if  command line argument is >1.
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <path_to_fasta.gz_file>"
  exit 1
fi

# Store the first argument (file path) in variable
fasta_file="$1"

# Check if the provided file exists
if [ ! -f "$fasta_file" ]; then
    echo "Error: File '$fasta_file' not found!"
    exit 1
fi
