#!/bin/bash

#Alyssa Ramirez
#amramirez18@dons.usfca.edu
#10/26/24

set -euo pipefail
if [ "$#" -ne 2 ]; then
  echo "Usage: ./render_report.sh path/to/SNP_data.csv sampleID"
  exit 1
fi
