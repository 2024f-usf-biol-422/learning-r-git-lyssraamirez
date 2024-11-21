#!/bin/bash


set -euo pipefail
if [ "$#" -ne 2 ]; then
  echo "Usage: ./render_report.sh path/to/SNP_data.csv sampleID"
  exit 1
fi

