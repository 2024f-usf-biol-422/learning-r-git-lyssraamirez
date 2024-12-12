#!/bin/bash
set -euo pipefail
#Alyssa Ramirez
#amramirez18@dons.usfca.edu
#12/11/24

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <snp_file_path> <sample_id>"
  exit 1
fi

# Assign arguments to variables
SNP_FILE="$1"
SAMPLE_ID="$2"

# Define output directories
OUTPUT_DIR="output"
FIGURE_DIR="${OUTPUT_DIR}/figures"
DATA_DIR="${OUTPUT_DIR}/data"

# Create output directories if they don't exist
mkdir -p "$FIGURE_DIR" "$DATA_DIR"

# Debugging: Print the paths and parameters being used
echo "SNP File: $SNP_FILE"
echo "Sample ID: $SAMPLE_ID"
echo "Output Directory: $OUTPUT_DIR"
echo "Figure Directory: $FIGURE_DIR"
echo "Data Directory: $DATA_DIR"

# Render the RMarkdown file with parameters
Rscript -e "rmarkdown::render(
  'Report.Rmd',
  params = list(snp_file = '$SNP_FILE', sample_id = '$SAMPLE_ID'),
  output_file = '${OUTPUT_DIR}/Report_${SAMPLE_ID}.html'
)"

# Print success message
echo "Report and outputs generated successfully!"






