#!/bin/bash
set -euo pipefail

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

# Move the generated subset CSV to the data directory
if [ -f "data/subset_snp_data${SAMPLE_ID}.csv" ]; then
  mv "data/subset_snp_data${SAMPLE_ID}.csv" "$DATA_DIR/"
  echo "Subset CSV moved to ${DATA_DIR}/subset_snp_data${SAMPLE_ID}.csv"
else
  echo "Subset CSV not found"
fi

# Move the generated scatter plot to the figures directory
if [ -f "output/scatter_plot${SAMPLE_ID}.png" ]; then
  mv "output/scatter_plot${SAMPLE_ID}.png" "$FIGURE_DIR/"
  echo "Scatter plot moved to ${FIGURE_DIR}/scatter_plot${SAMPLE_ID}.png"
else
  echo "Scatter plot not found"
fi

# Move the generated box plot to the figures directory
if [ -f "output/box_plot_${SAMPLE_ID}.png" ]; then
  mv "output/box_plot_${SAMPLE_ID}.png" "$FIGURE_DIR/"
  echo "Box plot moved to ${FIGURE_DIR}/box_plot_${SAMPLE_ID}.png"
else
  echo "Box plot not found"
fi

# Print success message
echo "Report and outputs generated successfully:"
echo "HTML Report: ${OUTPUT_DIR}/Report_${SAMPLE_ID}.html"
echo "Subset CSV: ${DATA_DIR}/subset_snp_data${SAMPLE_ID}.csv"
echo "Figures: ${FIGURE_DIR}/"





