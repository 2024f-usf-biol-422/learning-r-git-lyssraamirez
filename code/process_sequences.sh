#!/bin/bash

# Make good use of defensive programming and echo if  command line argument is >1.
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <path_to_fasta.gz_file>"
  exit 1
fi

fi

# Make sure file is created
if [ ! -f "$1" ]; then
  echo "Error: File '$1' not found!"
  exit 1
fi

