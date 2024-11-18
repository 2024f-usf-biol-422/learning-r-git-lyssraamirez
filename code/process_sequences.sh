#!/bin/bash

#Make good use of defensive programming and echo if  command line argument is >1.
if ["$#" -ne 1 ]; then
echo  "Use of : $0  <path_for_fasta.gz_data_file>

