#!/bin/bash
set -euo pipefail

# Check if parameters are passed
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_file> <sample_id>"
    exit 1
fi

# Assign arguments to variables
input_file=$1
sample_id=$2

# Render the RMarkdown file with parameters
Rscript -e "rmarkdown::render('Report.Rmd',
params = list(input_file = '$input_file', sample_id = '$sample_id'))"
