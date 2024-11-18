#!/bin/bash

# Make good use of defensive programming and echo if  command line argument is >1.
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <path_to_fasta.gz_file>"
  exit 1
fi

fi

