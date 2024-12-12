#!/bin/bash
set -euo pipefail

if [ "$#" -ne 2 ]; then
  echo "Usage: ./render_report.sh path/data/sample_snp_data copy.csv"
  exit 1
fi
sample_id="$2"
snp_data= "$1"
Rscript -e "rmarkdown::render(REPORT.Rmd',
           params = list(snp_data = '$snp_data', sample_id = '$SAMPLE_ID'),
           output_file = paste0('output/', '$SAMPLE_ID', '_REPORT.html'))"

