#Alyssa Ramirez
#amramirez18@dons.usfca.edu
#10/26/24
#!/bin/bash
set -euo pipefail

if [ "$#" -ne 2 ]; then
  echo "Usage: ./render_report.sh path/data/sample_snp_data copy.csv"
  exit 1
fi
sample_id="$2"
snp_data= "$1"

